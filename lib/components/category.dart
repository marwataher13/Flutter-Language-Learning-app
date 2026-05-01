import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({
    required this.text,
    required this.color,
    required this.onTap});
  final String text;
  final Color color;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 24),
        height: 65,
        width: double.infinity,
        color: color,
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
      ),
    );
  }
}
