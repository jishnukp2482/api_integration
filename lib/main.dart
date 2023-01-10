import 'package:api_integration/screens/homepagescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      title: "flutter api demo",
      debugShowCheckedModeBanner: false,
      home: homepagescreen(),
    );
  }
}
