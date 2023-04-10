import 'package:flutter/material.dart';

import '../contents/item.dart';
import '../models/model.dart';

class ColorPage extends StatelessWidget {
  ColorPage({super.key});
  final List<Numbers> arg = [
    Numbers(
        Sounds: "black.wav",
        image: "assets/images/colors/color_black.png",
        NameJapan: "Burakku",
        NameEng: "Black"),
    Numbers(
        Sounds: "brown.wav",
        image: "assets/images/colors/color_brown.png",
        NameJapan: "Chairo",
        NameEng: "Brown"),
    Numbers(
        Sounds: "dusty yellow.wav",
        image: "assets/images/colors/color_dusty_yellow.png",
        NameJapan: "Hokori Ppoi Kiiro",
        NameEng: "Dusty Yellow"),
    Numbers(
        Sounds: "gray.wav",
        image: "assets/images/colors/color_gray.png",
        NameJapan: "Gure",
        NameEng: "Gray"),
    Numbers(
        Sounds: "green.wav",
        image: "assets/images/colors/color_green.png",
        NameJapan: "Midori",
        NameEng: "Green"),
    Numbers(
        Sounds: "red.wav",
        image: "assets/images/colors/color_red.png",
        NameJapan: "Akka",
        NameEng: "Red"),
    Numbers(
        Sounds: "white.wav",
        image: "assets/images/colors/color_white.png",
        NameJapan: "Chiroi",
        NameEng: "White"),
    Numbers(
        Sounds: "yellow.wav",
        image: "assets/images/colors/yellow.png",
        NameJapan: "Kiro",
        NameEng: "Yellow"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff523C33),
        title: Text(
          "Colors",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: ListView.builder(
        itemCount: arg.length,
        itemBuilder: ((context, index) {
          return Item(
            PathSound: "assets/sounds/colors/",
            number: arg[index],
            color: Color(0xff7C3FA0),
          );
        }),
      ),
    );
    ;
  }
}
