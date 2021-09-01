import 'package:flutter/material.dart';
import 'package:ichchaa/view/HomeSection/FavouriteItem.dart';
import 'package:ichchaa/view/HomeSection/NotunPonnoScetion.dart';
import 'package:ichchaa/view/HomeSection/SheraOffer.dart';
import 'package:ichchaa/view/HomeSection/caurosleImage.dart';

class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[100],
      child: ListView(
        children: [
          SizedBox(height: 5),
          CauroselImage(),
          NotunPonnoSection(),
          SizedBox(height: 10),
          SheraOffer(),
          SizedBox(height: 10),
          FevouriteItem(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
