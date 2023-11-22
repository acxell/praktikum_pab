import 'package:flutter/material.dart';

class prod extends StatefulWidget {
  const prod({super.key});

  @override
  State<prod> createState() => _prodState();
}

class _prodState extends State<prod> {
  bool change = false;

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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset(
                    "assets/images/look.jpeg",
                    height: 100,
                    width: 100,
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing.',
                        textAlign: TextAlign.justify,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: "sans serrif",
                          height: 1.5,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset(
                    "assets/images/look.jpeg",
                    height: 100,
                    width: 100,
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing.',
                        textAlign: TextAlign.justify,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: "poppins",
                          height: 1.5,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset(
                    "assets/images/look.jpeg",
                    height: 100,
                    width: 100,
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing.',
                        textAlign: TextAlign.justify,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: "poppins",
                          height: 1.5,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset(
                    "assets/images/look.jpeg",
                    height: 100,
                    width: 100,
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing.',
                        textAlign: TextAlign.justify,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: "poppins",
                          height: 1.5,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Add To Cart"),
                      style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(Size(250, 40)),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors
                                  .yellow; // Change button color when pressed to yellow
                            }
                            return Colors.blueGrey; // Default button color
                          },
                        ),
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors
                                  .black; // Change text color when pressed to white
                            }
                            return Colors.white; // Default text color
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
        ));
  }
}
