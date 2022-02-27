import 'package:flutter/material.dart';
import 'package:ui_1/dukaanPremium.dart';
import 'package:ui_1/manageStore.dart';
import 'package:ui_1/order.dart';
import 'package:ui_1/payments.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.red),
      home: Payments(),
    );
  }
}
