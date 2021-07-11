import 'package:fiftythree_gadget_stock/pages/view/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: '53 Gadget Stock App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Login(),
    );
  }
}
