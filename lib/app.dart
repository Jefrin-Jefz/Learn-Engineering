import 'package:flutter/material.dart';
import 'package:learn_engg/theme.dart';
import 'package:learn_engg/view/home.dart';

class LearnEnggApp extends StatelessWidget {
  const LearnEnggApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      theme: learnTheme,
      darkTheme: learnTheme,
    );
  }
}
