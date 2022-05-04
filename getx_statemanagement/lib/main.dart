import 'package:flutter/material.dart';
import 'package:getx_statemanagement/views/product_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StateManagement with getx',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: ProductScreen(),
    );
  }
}


