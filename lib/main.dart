import 'package:flutter/material.dart';
import 'package:trytuko/screens/home_page.dart';

main() {
  runApp(LearnJapanais());
}

class LearnJapanais extends StatelessWidget {
  const LearnJapanais({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
