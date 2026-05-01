import 'package:flutter/material.dart';
import 'package:language_learning/components/item.dart';
import 'package:language_learning/models/item_model.dart';


class FamilyMemberspage extends StatelessWidget {
  const FamilyMemberspage({super.key});

  final List<ItemModel> family = const [
    ItemModel(
      image: 'assets/images/family_members/family_father.png',
      jpname: 'Chichioya',
      enname: 'Father',
      sound: 'assets/sounds/family_members/father.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_mother.png',
      jpname: 'Hahaoya',
      enname: 'Mother',
      sound: 'assets/sounds/family_members/mother.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_grandfather.png',
      jpname: 'Ojiisan',
      enname: 'Grand father',
      sound: 'assets/sounds/family_members/grand father.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_grandmother.png',
      jpname: 'Sobo',
      enname: 'Grand mother',
      sound: 'assets/sounds/family_members/grand mother.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_brother.png',
      jpname: 'Niisan',
      enname: 'Older brother',
      sound: 'assets/sounds/family_members/older bother.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_sister.png',
      jpname: 'Anee',
      enname: 'Older sister',
      sound: 'assets/sounds/family_members/older sister.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_younger_brother.png',
      jpname: 'Otouto',
      enname: 'Younger brother',
      sound: 'assets/sounds/family_members/younger brohter.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpname: 'Imouto',
      enname: 'Younger sister',
      sound: 'assets/sounds/family_members/younger sister.wav'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 125, 91, 79),
        title: Text('Family Members', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, index) {
          return Item(
            color: const Color.fromARGB(255, 156, 122, 71),
            item : family[index]);
        },
      ),
    );
  }
}
