import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:trytuko/models/model_phrases.dart';

class ItemPhrases extends StatelessWidget {
  const ItemPhrases({
    super.key,
    required this.phrases,
    required this.color,
    required this.PathSound,
  });
  final ModelPhrases phrases;
  final Color color;
  final String PathSound;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  phrases.NameEng,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  phrases.NameJapan,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
              onPressed: () {
                try {
                  AudioCache player = AudioCache(prefix: "$PathSound");
                  player.play(phrases.Sounds);
                } catch (ex) {
                  print(ex);
                }
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
              ))
        ],
      ),
    );
    ;
  }
}
