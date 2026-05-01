import 'package:flutter/material.dart';
import 'package:language_learning/components/item.dart';
import 'package:language_learning/models/item_model.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
      image: 'assets/images/numbers/number_one.png',
      jpname: 'Ichi',
      enname: 'One',
      sound: 'assets/sounds/numbers/number_one_sound.mp3'
    ),
    ItemModel(
      image: 'assets/images/numbers/number_two.png',
      jpname: 'Ni',
      enname: 'Two',
      sound: 'assets/sounds/numbers/number_two_sound.mp3'
    ),
    ItemModel(
      image: 'assets/images/numbers/number_three.png',
      jpname: 'San',
      enname: 'Three',
      sound: 'assets/sounds/numbers/number_three_sound.mp3'
    ),
    ItemModel(
      image: 'assets/images/numbers/number_four.png',
      jpname: 'Yon',
      enname: 'Four',
      sound: 'assets/sounds/numbers/number_four_sound.mp3'
    ),
    ItemModel(
      image: 'assets/images/numbers/number_five.png',
      jpname: 'Go',
      enname: 'Five',
      sound: 'assets/sounds/numbers/number_five_sound.mp3'
    ),
    ItemModel(
      image: 'assets/images/numbers/number_six.png',
      jpname: 'Roku',
      enname: 'Six',
      sound: 'assets/sounds/numbers/number_six_sound.mp3'
    ),
    ItemModel(
      image: 'assets/images/numbers/number_seven.png',
      jpname: 'Nana',
      enname: 'Seven',
      sound: 'assets/sounds/numbers/number_seven_sound.mp3'
    ),
    ItemModel(
      image: 'assets/images/numbers/number_eight.png',
      jpname: 'Hachi',
      enname: 'Eight',
      sound: 'assets/sounds/numbers/number_eight_sound.mp3'
    ),
    ItemModel(
      image: 'assets/images/numbers/number_nine.png',
      jpname: 'Kyu',
      enname: 'Nine',
      sound: 'assets/sounds/numbers/number_nine_sound.mp3'
    ),
    ItemModel(
      image: 'assets/images/numbers/number_ten.png',
      jpname: 'Ju',
      enname: 'Ten',
      sound: 'assets/sounds/numbers/number_ten_sound.mp3'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 167, 111, 90),
        title: Text('Numbers', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            color: const Color.fromARGB(255, 211, 176, 124),
            item: numbers[index]
            );
        },
      ),
    );
  }
}
