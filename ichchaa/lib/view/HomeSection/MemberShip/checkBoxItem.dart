import 'package:flutter/material.dart';
import 'package:ichchaa/Utils/TextWidget.dart';

class CheckBoxItem extends StatefulWidget {
  final  favouriteFoodItem;

  const CheckBoxItem({Key key, this.favouriteFoodItem}) : super(key: key);
  
  @override
  _CheckBoxItemState createState() => _CheckBoxItemState();
}

class _CheckBoxItemState extends State<CheckBoxItem> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for (var listItem in widget.favouriteFoodItem)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Checkbox(
                value: listItem.isChecked,
                onChanged: (bool currentBool) {
                  setState(() {
                    listItem.isChecked = currentBool;
                  });
                },
              ),
              TextWidget(
                text: listItem.name,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ],
          ),
      ],
    );
  }
}
