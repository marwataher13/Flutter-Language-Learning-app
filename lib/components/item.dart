import 'package:flutter/material.dart';
import 'package:language_learning/components/item_info.dart';
import 'package:language_learning/models/item_model.dart';

class Item extends StatelessWidget {
  const Item({required this.item, required this.color, Key? key}) : super(key: key);
  final ItemModel item;

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color.fromARGB(255, 250, 244, 228),
            child: Image.asset(item.image!),
          ),
          Expanded(child: ItemInfo(item: item)),
        ],
      ),
    );
  }
}
