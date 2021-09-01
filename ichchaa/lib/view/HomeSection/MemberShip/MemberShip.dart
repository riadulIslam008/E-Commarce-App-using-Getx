import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ichchaa/Controller/MemberShipController.dart';
import 'package:ichchaa/Model/CheckBoxItemList.dart';
import 'package:ichchaa/Utils/CustomTextField.dart';
import 'package:ichchaa/Utils/TextWidget.dart';
import 'package:ichchaa/Utils/UniversalColors.dart';
import 'package:ichchaa/view/HomeSection/MemberShip/DropDown.dart';
import 'package:ichchaa/view/HomeSection/MemberShip/checkBoxItem.dart';

class MemberShip extends GetWidget<MemberShipController> {
  final SizedBox _height = SizedBox(height: 15);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            _height,
            TextWidget(
              text: "আপনার Ichchha agro সদস্যতা অ্যাকাউন্ট তৈরী করুন",
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            _height,
            CustomTextField(
              controller: controller.fristNameController.value,
              hintText: "নামের প্রথম অংশ",
              labelText: "আপনার নামের প্রথম অংশ",
              prefixIcon: Icons.person,
              keyBoardType: TextInputType.name,
            ),
            _height,
            CustomTextField(
              controller: controller.lastNameController.value,
              hintText: "নামের শেষের অংশ",
              labelText: "আপনার নামের শেষের অংশ",
              prefixIcon: Icons.person,
              keyBoardType: TextInputType.name,
            ),
            _height,
            CustomTextField(
              controller: controller.emailController.value,
              hintText: "ইমেল",
              labelText: "আপনার ইমেল লিখুন দয়া করে",
              prefixIcon: Icons.email,
              keyBoardType: TextInputType.emailAddress,
            ),
            _height,
            CustomTextField(
              controller: controller.numberController.value,
              hintText: "্মোবাইল নাম্বার",
              labelText: "আপনার মোবাইল নাম্বার লিখুন ",
              prefixIcon: Icons.mobile_friendly_outlined,
              keyBoardType: TextInputType.number,
            ),
            _height,
            CustomTextField(
              controller: controller.addressController.value,
              hintText: "ঠিকানা",
              labelText: "আপনার ঠিকানা লিখুন ",
              prefixIcon: Icons.map,
              keyBoardType: TextInputType.streetAddress,
              maxLine: 2,
            ),
            _height,
            DropDown(),
            _height,
            CustomTextField(
              controller: controller.zipCodeController.value,
              hintText: "জিপ কোড",
              labelText: "আপনার জিপ কোড লিখুন ",
              prefixIcon: Icons.lock,
              keyBoardType: TextInputType.number,
            ),
            _height,
            CustomTextField(
              controller: controller.zipCodeController.value,
              hintText: "৮+ বয়সের সদস্য সংখ্যা লিখুন",
              labelText: "৮+ বয়সের সদস্য সংখ্যা লিখুন ",
              prefixIcon: null,
              keyBoardType: TextInputType.number,
            ),
            _height,
            CustomTextField(
              controller: controller.zipCodeController.value,
              hintText: "০-৮ বয়সের সদস্য সংখ্যা লিখুন",
              labelText: "০-৮ বয়সের সদস্য সংখ্যা লিখুন ",
              prefixIcon: null,
              keyBoardType: TextInputType.number,
            ),
            _height,
            Row(
              children: [
                TextWidget(
                    text: "পছন্দসই খাবার",
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
                Icon(Icons.food_bank),
              ],
            ),
            CheckBoxItem(
              favouriteFoodItem: favouriteFoodItem,
            ),
            _height,
             Row(
              children: [
                TextWidget(
                    text: "যদি কোন পরিবারের সদস্যের হয়",
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
                Icon(null),
              ],
            ),
            CheckBoxItem(
              favouriteFoodItem: disease,
            ),
            _height,
            CustomTextField(
              controller: controller.zipCodeController.value,
              hintText: "পাসওয়ার্ড",
              labelText: "আপনার পাসওয়ার্ড দিন",
              prefixIcon: Icons.lock,
              keyBoardType: TextInputType.visiblePassword,
            ),
            _height,
            SizedBox(height: 5),
            CustomTextField(
              controller: controller.zipCodeController.value,
              hintText: "পাসওয়ার্ড নিশ্চিত করুন",
              labelText: "পুনরায় পাসওয়ার্ড দিন",
              prefixIcon: Icons.lock,
              keyBoardType: TextInputType.visiblePassword,
            ),
            _height,
            MaterialButton(
              color: primaryColor,
              splashColor: secondaryColor,
              onPressed: () {},
              child: TextWidget(
                text: "সদস্যতা জমা দিন",
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
