import 'package:app_catalog/models/catalog.dart';
import 'package:app_catalog/widgets/drawer.dart';
import 'package:app_catalog/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";
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
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          //itemCount: CatalogModel.items.length,
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              //item: CatalogModel.items[index],
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
