import 'package:flutter/material.dart';

import '../contents/item.dart';
import '../models/model.dart';

class FamilyMembers extends StatelessWidget {
  FamilyMembers({super.key});
  final List<Numbers> arg = [
    Numbers(
        Sounds: "daughter.wav",
        image: "assets/images/family_members/family_daughter.png",
        NameJapan: "Musume",
        NameEng: "Daughter"),
    Numbers(
        Sounds: "father.wav",
        image: "assets/images/family_members/family_father.png",
        NameJapan: "Chichioya",
        NameEng: "Father"),
    Numbers(
        Sounds: "grand father.wav",
        image: "assets/images/family_members/family_grandfather.png",
        NameJapan: "Ojisan",
        NameEng: "Grand Father"),
    Numbers(
        Sounds: "grand mother.wav",
        image: "assets/images/family_members/family_grandmother.png",
        NameJapan: "Sobo",
        NameEng: "Grand Mother"),
    Numbers(
        Sounds: "mother.wav",
        image: "assets/images/family_members/family_mother.png",
        NameJapan: "Hahaoya",
        NameEng: "Mother"),
    Numbers(
        Sounds: "older brother.wav",
        image: "assets/images/family_members/family_older_brother.png",
        NameJapan: "Ni SAn",
        NameEng: "Older Brother"),
    Numbers(
        Sounds: "older sister.wav",
        image: "assets/images/family_members/family_older_sister.png",
        NameJapan: "Ani",
        NameEng: "Older Sister"),
    Numbers(
        Sounds: "son.wav",
        image: "assets/images/family_members/family_son.png",
        NameJapan: "Museko",
        NameEng: "Son"),
    Numbers(
        Sounds: "younger brother.wav",
        image: "assets/images/family_members/family_younger_brother.png",
        NameJapan: "Otooto",
        NameEng: "Younger Brother"),
    Numbers(
        Sounds: "younger sister.wav",
        image: "assets/images/family_members/family_younger_sister.png",
        NameJapan: "Imoto",
        NameEng: "Younger Sister"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff523C33),
        title: Text(
          "Family Members",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: ListView.builder(
        itemCount: arg.length,
        itemBuilder: ((context, index) {
          return Item(
            PathSound: "assets/sounds/family_members/",
            number: arg[index],
            color: Color(0xff517C30),
          );
        }),
      ),
    );
  }
}
