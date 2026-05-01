import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning/models/item_model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({Key? key, required this.item}) : super(key: key);
  static final AudioPlayer player = AudioPlayer();
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.jpname,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                item.enname,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
        Spacer(flex: 1),
        IconButton(
          
          onPressed: () async {
            
            await player.play(
              AssetSource(item.sound.replaceFirst('assets/', '')),
            );
          },
          icon: const Icon(Icons.play_arrow, color: Colors.white),
        ),
      ],
    );
  }
}
