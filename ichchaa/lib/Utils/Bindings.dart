import 'package:get/get.dart';
import 'package:ichchaa/Controller/HomeController.dart';
import 'package:ichchaa/Controller/MemberShipController.dart';
import 'package:ichchaa/Controller/SearchController.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeViewController());
    Get.lazyPut(() => SearchController());
    Get.lazyPut(() => MemberShipController());
  }
}
