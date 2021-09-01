import 'package:flutter/material.dart';
import 'package:ichchaa/Loading/ItemPage.dart';
import 'package:ichchaa/Utils/TextWidget.dart';
import 'package:ichchaa/Utils/UniversalColors.dart';

class FevouriteItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                  text: "Favourite Item",
                  color: Colors.grey,
                  fontWeight: FontWeight.normal),
              TextButton(
                onPressed: () {},
                child: TextWidget(
                  text: "সব দেখুন",
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 250,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    margin: EdgeInsets.only(left: 12),
                    child: ItemPageLoading(),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
