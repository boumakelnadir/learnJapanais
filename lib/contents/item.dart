import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../models/model.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.number,
    required this.color,
    required this.PathSound,
  });
  final Numbers number;
  final Color color;
  final String PathSound;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Row(
        children: [
          Container(
            color: Color(0xffFEF3D9),
            height: 80,
            child: Image.asset(number.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  number.NameEng,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  number.NameJapan,
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
                  player.play(number.Sounds);
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
  }
}
