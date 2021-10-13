import 'package:app_catalog/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Flutter";
    // double pi = 3.14;
    // bool isMale = true;
    // num temp = 39.5;

    // var day = "Tuesday";
    // const pi = 3.14;
    // final String week = 1;

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Catalog App",
          //   style: TextStyle(
          //     color: Colors.black,
          //   ),
        ),
      ),
      body: Container(
        height: 100,
        width: 100,
        color: Colors.green,
      ),
      drawer: MyDrawer(),
    );
  }
}
