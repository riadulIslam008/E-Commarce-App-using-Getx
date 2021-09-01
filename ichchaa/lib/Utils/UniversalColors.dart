import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';

final HexColor primaryColor = HexColor("#0c6934");
final HexColor secondaryColor = HexColor("#f5d90b");

final Gradient gradianColor = LinearGradient(
  colors: [HexColor("#0c6934"), HexColor("#f5d90b")],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
