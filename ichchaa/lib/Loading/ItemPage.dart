import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class ItemPageLoading extends StatelessWidget {
  final screenWidth = Get.width;
  final bool offer;
  final bool shop;

  ItemPageLoading({this.offer = false, this.shop = false});
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade300,
      child: Container(
        // margin: EdgeInsets.only(right: 15),
        height: 250,
        child: Column(
          children: [
            Container(
              height:shop ? 100: 170,
              width: screenWidth * 0.4,
              color: Colors.grey.shade300,
            ),
            SizedBox(height: 5),
            Container(
              height: 15,
              width: screenWidth * 0.4 - 50,
              color: Colors.grey.shade300,
            ),
            SizedBox(height: 5),
            offer
                ? Row(
                    children: [
                      Container(
                        height: 15,
                        width: 40,
                        color: Colors.grey.shade300,
                      ),
                      SizedBox(width: 5),
                      Container(
                        height: 15,
                        width: 40,
                        color: Colors.grey.shade300,
                      ),
                    ],
                  )
                : Container(
                    height: 15,
                    width: 40,
                    color: Colors.grey.shade300,
                  ),
            SizedBox(height: 5),
            Container(
              height: 15,
              width:shop? screenWidth * 0.4 - 70:  screenWidth * 0.4 - 50,
              color: Colors.grey.shade300,
            ),
          ],
        ),
      ),
    );
  }
}
