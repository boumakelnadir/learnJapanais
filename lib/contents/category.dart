import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category(
      {super.key,
      required this.color,
      required this.name,
      required this.ontap});
  final Color color;
  final String name;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.centerLeft,
        height: 55,
        width: double.infinity,
        color: color,
        padding: EdgeInsets.only(left: 25),
        child: Text(
          "$name",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
