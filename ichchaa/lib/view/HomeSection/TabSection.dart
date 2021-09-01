import 'package:flutter/material.dart';
import 'package:ichchaa/Utils/UniversalColors.dart';
import 'package:ichchaa/view/HomeSection/ContactSection/ContactSection.dart';
import 'package:ichchaa/view/HomeSection/Home.dart';
import 'package:ichchaa/view/HomeSection/MemberShip/MemberShip.dart';
import 'package:ichchaa/view/HomeSection/Shop.dart/Shop.dart';
import 'package:ichchaa/view/HomeSection/b.dart';

class TabSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(
                isScrollable: true,
                indicatorColor: secondaryColor,
                tabs: [
                  Tab(
                    text: "হোম",
                  ),
                  Tab(
                    text: "আমাদের সর্ম্পকে",
                  ),
                  Tab(
                    text: "শপ",
                  ),
                  Tab(
                    text: "সদস্যতা",
                  ),
                  Tab(
                    text: "যোগাযোগ",
                  ),
                ],
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [Home(), BDemo(), ShopPage(), MemberShip(),ContactSection()],
        ),
      ),
    );
  }
}
