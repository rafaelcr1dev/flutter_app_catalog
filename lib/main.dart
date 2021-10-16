import 'package:app_catalog/core/store.dart';
import 'package:app_catalog/pages/cart_page.dart';
import 'package:app_catalog/pages/home_page.dart';
import 'package:app_catalog/pages/login_page.dart';
import 'package:app_catalog/utils/routes.dart';
import 'package:app_catalog/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(
    VxState(
      store: MyStore(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
