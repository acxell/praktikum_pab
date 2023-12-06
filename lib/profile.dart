import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'UNIQLO',
          style: TextStyle(
            fontSize: 30,
            fontFamily: "poppins",
            height: 0,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/images/this.png"),
                            fit: BoxFit.cover)),
                  ),
                ),
                SizedBox(height: 4),
                Center(
                    child: Text(
                  "Acxell Rizada Sudigto",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                  ),
                )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: const <Widget>[
                        Icon(Icons.person_2_sharp, size: 30),
                        Text(
                          "1462100131",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "poppins",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(Icons.class_, size: 30),
                        Text(
                          "A - 1",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "poppins",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(Icons.home, size: 30),
                        Text(
                          "Bumi Gedangan Indah, Sidoarjo",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "poppins",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(Icons.mail, size: 30),
                        Text(
                          "acxellrizada@gmail.com",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "poppins",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
