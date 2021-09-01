import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ichchaa/Controller/HomeController.dart';
import 'package:ichchaa/Utils/UniversalColors.dart';

class BottomBar extends GetWidget<HomeViewController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomAppBar(
        notchMargin: 4,
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          unselectedItemColor: Colors.grey.shade300,
          selectedItemColor: primaryColor,
          currentIndex: controller.currIndex.value,
          onTap: (presentIndex) {
            controller.changeIndex(presentIndex);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(null), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
          ],
        ),
      ),
    );
  }
}
