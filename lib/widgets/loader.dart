import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator().centered().py16().expand();
  }
}
