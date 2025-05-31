import 'package:dukan/modules/splashview/splashview.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(Dukan());
}

class Dukan extends StatelessWidget {
  const Dukan({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // This is the main widget of the application.
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: Splashview(),
    );
  }
}
