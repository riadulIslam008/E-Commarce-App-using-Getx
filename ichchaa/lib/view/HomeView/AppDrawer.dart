import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ichchaa/Utils/TextWidget.dart';
import 'package:ichchaa/Utils/UniversalColors.dart';
import 'package:shimmer/shimmer.dart';

class AppDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 20, top: 8, bottom: 8),
            decoration: BoxDecoration(
              gradient: gradianColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: "সমস্ত বিভাগ",
                  fontWeight: FontWeight.bold,
                ),
                Container(
                  // padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Icon(Icons.clear_outlined, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Shimmer.fromColors(
                      baseColor: Colors.grey.shade400,
                      highlightColor: Colors.grey.shade300,
                      child: ListTile(
                        leading: Container(
                          height: 30,
                          width: 30,
                          color: Colors.grey.shade400,
                        ),
                        title: Container(
                          height: 20,
                          width: 50,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}