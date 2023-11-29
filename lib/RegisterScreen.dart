import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'widget/fieldCustom.dart';
import 'package:praktikum_1/page1.dart';

// Other imports...

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _registerState();
}

class _registerState extends State<RegisterScreen> {
  final formkey = GlobalKey<FormState>();

  TextEditingController namaController = TextEditingController();
  TextEditingController nbiController = TextEditingController();
  TextEditingController kelasController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Image.asset(
                  'assets/images/otakk.png',
                  scale: 3,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textFieldCustom('Masukkan Nama', namaController),
                  textFieldCustom('Masukkan NBI', nbiController),
                  textFieldCustom('Masukkan kelas', kelasController),
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
                          final SharedPreferences prefs =
                              await SharedPreferences.getInstance();

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
    );
  }
}
