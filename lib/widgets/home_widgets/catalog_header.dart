import 'package:app_catalog/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "App Catalog".text.xl5.bold.color(context.theme.accentColor).make(),
            "Trending products".text.xl2.make(),
          ],
        ),
      ],
    );
  }
}
