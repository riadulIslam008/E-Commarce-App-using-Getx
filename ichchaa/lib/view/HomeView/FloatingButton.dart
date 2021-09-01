import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ichchaa/Controller/HomeController.dart';
import 'package:ichchaa/Utils/UniversalColors.dart';

class FloatingButton extends GetWidget<HomeViewController> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.search),
      backgroundColor: primaryColor,
      onPressed: () {
        controller.changeIndex(1);
      },
    );
  }
}
