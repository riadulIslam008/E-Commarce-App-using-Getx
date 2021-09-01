import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartItem extends StatelessWidget {
  final _height = Get.height * 0.25;
  final _width = Get.width;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.blueGrey[200],
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(bottom: 30, left: 20, right: 20),
          height: _height,
          width: _width,
          child: Container(
            height: _height - 15,
            child: Row(
              children: [
                Container(
                  width: _width * 0.55,
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          color: Colors.grey[400], height: 20, width: 100),
                      SizedBox(height: 15),
                      Container(
                          color: Colors.grey[400], height: 20, width: 100),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 20,
          child: Container(
            height: 40,
            width: (_width * 0.55) - 50,
            color: Colors.grey.shade300,
          ),
        ),
      ],
    );
  }
}
