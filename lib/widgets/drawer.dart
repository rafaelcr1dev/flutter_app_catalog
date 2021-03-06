import 'package:app_catalog/utils/routes.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://i.pravatar.cc/150?img=5";

    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                // decoration: BoxDecoration(
                //   color: Colors.blue,
                // ),
                accountName: Text("Pawan Kumar"),
                accountEmail: Text("mtechviral@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              },
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.catalogRoute);
              },
              leading: Icon(
                Icons.email,
                color: Colors.white,
              ),
              title: Text(
                "Catalog",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
