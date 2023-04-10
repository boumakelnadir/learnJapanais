import 'package:flutter/material.dart';
import 'package:trytuko/screens/color_page.dart';
import 'package:trytuko/screens/phrases_page.dart';

import '../contents/category.dart';
import 'family_members_page.dart';
import 'members_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff523C33),
        title: Text(
          "Toku",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Category(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (contex) {
                return MembersPage();
              }));
            },
            name: "Numbers",
            color: Color(0xffFF9E3A),
          ),
          Category(
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contex) => FamilyMembers(),
                  ));
            },
            name: "Family Members",
            color: Color(0xff5C8A3C),
          ),
          Category(
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contex) => ColorPage(),
                  ));
            },
            name: "Colors",
            color: Color(0xff844CAC),
          ),
          Category(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (contex) {
                return PhrasesPage();
              }));
            },
            name: "phrases",
            color: Color(0xff51AFD3),
          ),
        ],
      ),
    );
  }
}
