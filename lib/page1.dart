import 'package:praktikum_1/botnavbar.dart';
import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome to flutter'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Welcome to',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontFamily: "poppins",
                height: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'PRAKTIKUM PAB 2023',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontFamily: "poppins",
                height: 1.0,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '1462100131',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "poppins",
                      height: 2.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset(
                    "assets/images/Katana.png",
                    height: 350,
                    width: 800,
                  ),
                  Text(
                    'Acxell Rizada Sudigto',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "poppins",
                      height: 2.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return BottomNavigation();
                      }),
                    );
                  },
                  child: Text("Masuk"),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                        Size(250, 40)), // Set the button size
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
