import 'package:flutter/material.dart';

import '../contents/item_phrases.dart';
import '../models/model_phrases.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});
  final List<ModelPhrases> arg = [
    ModelPhrases(
      Sounds: "are_you_coming.wav",
      NameJapan: "Kimasu ka",
      NameEng: "are you coming",
    ),
    ModelPhrases(
      Sounds: "dont_forget_to_subscribe.wav",
      NameJapan: "Kōdoku suru koto o wasurenaide kudasai",
      NameEng: "Dont Forget To Subscribe",
    ),
    ModelPhrases(
        Sounds: "how_are_you_feeling.wav",
        NameJapan: "Go kibun wa ikagadesu ka",
        NameEng: "how are you feeling"),
    ModelPhrases(
      Sounds: "i_love_anime.wav",
      NameJapan: "Watashi wa anime ga daisukidesu",
      NameEng: "i_love_anime",
    ),
    ModelPhrases(
      Sounds: "i_love_programming.wav",
      NameJapan: "Watashi wa puroguramingu ga daisukid",
      NameEng: "i_love_programming",
    ),
    ModelPhrases(
      Sounds: "programming_is_easy.wav",
      NameJapan: "Puroguramingu wa kantandesu",
      NameEng: "programming_is_easy",
    ),
    ModelPhrases(
      Sounds: "what_is_your_name.wav",
      NameJapan: "Namae wa nandesu ka",
      NameEng: "what_is_your_name",
    ),
    ModelPhrases(
      Sounds: "where_are_you_going.wav",
      NameJapan: "Doko ni iku no",
      NameEng: "where_are_you_going",
    ),
    ModelPhrases(
      Sounds: "yes_im_coming.wav",
      NameJapan: "Hai, kimasu",
      NameEng: "yes_im_coming",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff523C33),
        title: Text(
          "Phrases",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: ListView.builder(
        itemCount: arg.length,
        itemBuilder: ((context, index) {
          return ItemPhrases(
              PathSound: "assets/sounds/phrases/",
              color: Color(0xff51AFD3),
              phrases: arg[index]);
        }),
      ),
    );
  }
}
