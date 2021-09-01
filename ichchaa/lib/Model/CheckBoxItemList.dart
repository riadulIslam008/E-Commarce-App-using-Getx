
class CheckBoxItemList {
  final String name;
  bool isChecked;

  CheckBoxItemList(this.name, this.isChecked);
}

List<CheckBoxItemList> favouriteFoodItem = <CheckBoxItemList>[
  CheckBoxItemList("জৈব খাদ্য", false),
  CheckBoxItemList( "মৌসুমি ফল", false),
  CheckBoxItemList("গ্রামের খাবার", false),
  CheckBoxItemList("পাহাড়ের খবার", false),
  CheckBoxItemList("দুগ্ধজাত খাবার", false),
];


List<CheckBoxItemList> disease = <CheckBoxItemList>[
  CheckBoxItemList("ডায়াবেটিস রোগী", false),
  CheckBoxItemList( "উচ্চরক্ত চাপ", false),
  CheckBoxItemList("হৃদরোগের রোগী", false),
  CheckBoxItemList("কিডনী রোগের রোগী", false),
];