import 'package:flutter/material.dart';

import 'pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '53 Gadget Stock App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Login(),
    );
  }
}
