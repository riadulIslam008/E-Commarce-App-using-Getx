import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ichchaa/Controller/MemberShipController.dart';

class DropDown extends GetWidget<MemberShipController> {
  final List<String> _districkName = <String>[
    "Dhaka",
    "Rajshahi",
    "Khulna",
    "Borishal",
    "Rungpur",
    "Sylet",
    "Chittagong"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      //  height: 50,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Obx(
        () => DropdownButton(
          value: controller.districkName.value,
          isExpanded: true,
          icon: Icon(Icons.arrow_drop_down, color: Colors.black),
          //hint: Text("আপনার বিভাগ নির্বাচন করুন"),
          items: _districkName
              .map(
                (value) => DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                ),
              )
              .toList(),
          onChanged: (currentDistrick) {
            controller.districkName.value = currentDistrick;
          },
        ),
      ),
    );
  }
}
