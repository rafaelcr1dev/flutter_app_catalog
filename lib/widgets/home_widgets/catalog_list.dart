import 'package:app_catalog/models/cart.dart';
import 'package:app_catalog/models/catalog.dart';
import 'package:app_catalog/pages/home_detail_page.dart';
import 'catalog_item.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CatalogModel.items?.isEmpty
        ? "Nothing to show".text.xl3.makeCentered()
        : ListView.builder(
            shrinkWrap: true,
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) {
              final catalog = CatalogModel.items[index];
              return InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeDetailPage(
                      catalog: catalog,
                    ),
                  ),
                ),
                child: CatalogItem(catalog: catalog),
              );
            },
          );
  }
}
