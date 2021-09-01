import 'package:flutter/material.dart';
import 'package:ichchaa/Loading/CartItem.dart';

class CartSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[200],
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
        return CartItem();
      }),
    );
  }
}
