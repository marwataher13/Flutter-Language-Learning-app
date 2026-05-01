import 'package:flutter/material.dart';
import 'package:language_learning/components/phraseitem.dart';
import 'package:language_learning/models/item_model.dart';

class PhrasePage extends StatelessWidget {
  const PhrasePage({super.key});

  final List<ItemModel> phrases = const [
    ItemModel(
      jpname: 'Kimasu ka?',
      enname: 'Are you coming?',
      sound: 'assets/sounds/phrases/are_you_coming.wav',
    ),
    ItemModel(
      jpname: 'Hai, watashi wa kite imasu.',
      enname: 'Yes, I am coming.',
      sound: 'assets/sounds/phrases/yes_im_coming.wav',
    ),
    ItemModel(
      jpname: 'Go-kibun wa ikaga desu ka?',
      enname: 'How are you feeling?',
      sound: 'assets/sounds/phrases/how_are_you_feeling.wav',
    ),
    ItemModel(
      jpname: 'Watashi wa anime ga daisuki desu.',
      enname: 'I love anime.',
      sound: 'assets/sounds/phrases/i_love_anime.wav',
    ),
    ItemModel(
      jpname: 'Puroguramingu wa kantan desu.',
      enname: 'Programming is easy.',
      sound: 'assets/sounds/phrases/programming_is_easy.wav',
    ),
    ItemModel(
      jpname: 'Namae wa nan desu ka?',
      enname: 'What is your name?',
      sound: 'assets/sounds/phrases/what_is_your_name.wav',
    ),
    ItemModel(
      jpname: 'Doko ni iku no?',
      enname: 'Where are you going?',
      sound: 'assets/sounds/phrases/where_are_you_going.wav',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 123, 73, 55),
        title: Text('Phrases', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return Phraseitem(
            color: const Color.fromARGB(255, 94, 81, 46),
            item: phrases[index],
          );
        },
      ),
    );
  }
}
