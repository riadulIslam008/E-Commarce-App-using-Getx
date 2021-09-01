import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  var searchText = TextEditingController().obs;
  var searchBoxText = "".obs;

  textClear() {
    searchText.value.clear();
  }

  searchBoxValue(String value) {
    searchBoxText.value = value.toString();
  }
}
