import 'package:app_catalog/models/catalog.dart';
import 'package:app_catalog/widgets/drawer.dart';
import 'package:app_catalog/widgets/item_widget.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CatalogPage extends StatefulWidget {
  @override
  _CatalogPageState createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  var listView = false;
  final int days = 30;
  final String name = "Codepur";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];

    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();

    setState(() {});
  }

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
    // final dummyList = List.generate(50, (index) => CatalogModel.items[0]);

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
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? (listView)
                ? ListView.builder(
                    //itemCount: CatalogModel.items.length,
                    itemCount: CatalogModel.items.length,
                    itemBuilder: (context, index) {
                      return ItemWidget(
                        //item: CatalogModel.items[index],
                        item: CatalogModel.items[index],
                      );
                    },
                  )
                : GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                    ),
                    itemBuilder: (context, index) {
                      final item = CatalogModel.items[index];
                      return Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: GridTile(
                          header: Container(
                            child: Text(
                              item.name,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            width: 100.0,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                            ),
                          ),
                          child: Image.network(
                            item.image,
                          ),
                          footer: Container(
                            child: Text(
                              item.price.toString(),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: CatalogModel.items.length)
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
