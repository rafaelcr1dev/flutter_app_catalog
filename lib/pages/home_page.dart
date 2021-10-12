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
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
