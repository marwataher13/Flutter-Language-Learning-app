import 'package:flutter/material.dart';
import 'package:language_learning/components/category.dart';
import 'package:language_learning/screens/family_members.dart';
import 'package:language_learning/screens/number_page.dart';
import 'package:language_learning/screens/phrase_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 235, 211),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 159, 106, 87),
        title: Text(
          'Tuko',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: const Color.fromARGB(255, 211, 176, 124),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return NumberPage();
                }),
              );
            },
          ),
          Category(
            text: 'Family Members',
            color: const Color.fromARGB(255, 156, 122, 71),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return FamilyMemberspage();
                }),
              );
            },
            ),
          Category(
            text: 'Phrases',
            color: const Color.fromARGB(255, 94, 81, 46),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return PhrasePage();
                }),
              );
            },
            ),
            
          
        ],
      ),
    );
  }
}
