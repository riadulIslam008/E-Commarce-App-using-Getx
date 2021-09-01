import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewController extends GetxController {
  RxInt currIndex = 0.obs;
  var scaffoldKey = GlobalKey<ScaffoldState>();

  void changeIndex(int presentIndex) {
    currIndex.value = presentIndex;
  }

  void openDrawer() {
    scaffoldKey.currentState.openDrawer();
  }
}
