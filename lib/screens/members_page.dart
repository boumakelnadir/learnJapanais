import 'package:flutter/material.dart';

import '../contents/item.dart';
import '../models/model.dart';

class MembersPage extends StatelessWidget {
  MembersPage({super.key});

  final List<Numbers> arg = [
    Numbers(
        Sounds: "number_one_sound.mp3",
        image: "assets/images/numbers/number_one.png",
        NameJapan: "ichi",
        NameEng: "One"),
    Numbers(
        Sounds: "number_two_sound.mp3",
        image: "assets/images/numbers/number_two.png",
        NameJapan: "ni",
        NameEng: "two"),
    Numbers(
        Sounds: "number_three_sound.mp3",
        image: "assets/images/numbers/number_three.png",
        NameJapan: "san",
        NameEng: "three"),
    Numbers(
        Sounds: "number_four_sound.mp3",
        image: "assets/images/numbers/number_four.png",
        NameJapan: "shi",
        NameEng: "four"),
    Numbers(
        Sounds: "number_five_sound.mp3",
        image: "assets/images/numbers/number_five.png",
        NameJapan: "go",
        NameEng: "five"),
    Numbers(
        Sounds: "number_six_sound.mp3",
        image: "assets/images/numbers/number_six.png",
        NameJapan: "roku",
        NameEng: "six"),
    Numbers(
        Sounds: "number_seven_sound.mp3",
        image: "assets/images/numbers/number_seven.png",
        NameJapan: "sebun",
        NameEng: "seven"),
    Numbers(
        Sounds: "number_eight_sound.mp3",
        image: "assets/images/numbers/number_eight.png",
        NameJapan: "hashi",
        NameEng: "eight"),
    Numbers(
        Sounds: "number_nine_sound.mp3",
        image: "assets/images/numbers/number_nine.png",
        NameJapan: "kyu",
        NameEng: "nine"),
    Numbers(
        Sounds: "number_ten_sound.mp3",
        image: "assets/images/numbers/number_ten.png",
        NameJapan: "ju",
        NameEng: "ten"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff523C33),
        title: Text(
          "Members",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: ListView.builder(
        itemCount: arg.length,
        itemBuilder: ((context, index) {
          return Item(
            PathSound: "assets/sounds/numbers/",
            number: arg[index],
            color: Color(0xffF8942D),
          );
        }),
      ),
    );
  }
}
