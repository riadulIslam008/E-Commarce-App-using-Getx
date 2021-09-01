import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ichchaa/Controller/HomeController.dart';
import 'package:ichchaa/Utils/TextWidget.dart';
import 'package:ichchaa/Utils/UniversalColors.dart';
import 'package:ichchaa/view/CartSection/CartSection.dart';
import 'package:ichchaa/view/HomeSection/TabSection.dart';
import 'package:ichchaa/view/HomeView/AppDrawer.dart';
import 'package:ichchaa/view/HomeView/BottomBar.dart';
import 'package:ichchaa/view/HomeView/FloatingButton.dart';
import 'package:ichchaa/view/SearchView/search.dart';

class HomePageView extends GetWidget<HomeViewController> {
  final List<Widget> _widgetList = <Widget>[
    TabSection(),
    Search(),
    CartSection()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      key: controller.scaffoldKey,
      drawer: AppDrawer(),
      body: Obx(() => IndexedStack(
        index: controller.currIndex.value,
        children: _widgetList,
      )),
      bottomNavigationBar: BottomBar(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingButton(),
    );
  }

  appBar() {
    return AppBar(
      backgroundColor: secondaryColor,
      actions: [
        GestureDetector(
          onTap: () {
            controller.openDrawer();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        Expanded(child: Container()),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          alignment: Alignment.centerRight,
          child: TextWidget(
            text: "Signup",
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
