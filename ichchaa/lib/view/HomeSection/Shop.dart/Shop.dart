import 'package:flutter/material.dart';
import 'package:ichchaa/Loading/ItemPage.dart';

class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[100],
      margin: EdgeInsets.symmetric(vertical: 20),
      child: GridView.builder(
          shrinkWrap: true,
          primary: false,
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.white,
              padding: const EdgeInsets.only(top: 5.0),
              child: ItemPageLoading(shop: true),
            );
          }),
    );
  }
}
