import 'package:flutter/material.dart';
import 'package:language_learning/components/item_info.dart';
import 'package:language_learning/models/item_model.dart';

class Phraseitem extends StatelessWidget {
  const Phraseitem({required this.item, required this.color, Key? key})
    : super(key: key);
  final ItemModel item;

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        color: color,
        child: Row(
          children: [
            Expanded(
              child: ItemInfo(item: item),
            ),
          ],
        ),
      ),
    );
  }
}
