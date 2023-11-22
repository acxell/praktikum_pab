import 'package:flutter/material.dart';
import 'package:praktikum_1/widget/ListProd.dart';

class Prod extends StatefulWidget {
  const Prod({Key? key}) : super(key: key);

  @override
  State<Prod> createState() => _ProdState();
}

class _ProdState extends State<Prod> {
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
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            SizedBox(
              width: 500,
              height: 560,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return list_prod();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
