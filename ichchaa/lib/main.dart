import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ichchaa/Utils/Bindings.dart';
import 'package:ichchaa/view/HomeView/HomePageView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePageView(),
    );
  }
}
