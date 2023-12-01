import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'widget/fieldCustom.dart';
import 'package:praktikum_1/page1.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _registerState();
}

class _registerState extends State<RegisterScreen> {
  final formkey = GlobalKey<FormState>();

  TextEditingController namaController = TextEditingController();
  TextEditingController nbiController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController igController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Form(
            key: formkey,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 60),
                    child: Image.asset(
                      'assets/images/otakk.png',
                      scale: 4,
                    ),
                  ),
                  Text(
                    "Welcome To",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    ),
                  ),
                  Text(
                    "Praktikum PAB 2023",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      textFieldCustom('Masukkan Nama', namaController),
                      textFieldCustom('Masukkan NBI', nbiController),
                      textFieldCustom('Masukkan Email', emailController),
                      textFieldCustom('Masukkan Alamat', alamatController),
                      textFieldCustom('Masukkan Akun Instagram', igController),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 25,
                          right: 25,
                          top: 30,
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                            foregroundColor: MaterialStateProperty.all(
                                Colors.white), // Set the button size
                          ),
                          onPressed: () async {
                            if (formkey.currentState!.validate()) {
                              print(namaController.text);
                              print(nbiController.text);
                              print(emailController.text);
                              print(alamatController.text);
                              print(igController.text);
                              final SharedPreferences prefs =
                                  await SharedPreferences.getInstance();

                              await prefs.setString(
                                  'nama', namaController.text);
                              await prefs.setString('nbi', nbiController.text);
                              await prefs.setString(
                                  'email', emailController.text);
                              await prefs.setString(
                                  'alamat', alamatController.text);
                              await prefs.setString('ig', igController.text);

                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (Builder) {
                                  return page1();
                                }),
                              );
                            }
                          },
                          child: Center(
                            child: Text("Daftar"),
                          ),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
