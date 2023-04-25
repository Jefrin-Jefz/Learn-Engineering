import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:learn_engg/app.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // ignore: deprecated_member_use
  FlutterNativeSplash.removeAfter(initialization);
  runApp(const LearnEnggApp());
}

Future initialization(BuildContext? context) async {
  await Future.delayed(const Duration(seconds: 2));
}

//
// MaterialApp(
// home: VideoPlayerView(
// explanation: 'this is a',
// title: 'the title',
// videoUrl:
// "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
// ),
// theme: learnTheme,
// darkTheme: learnTheme,
// ));
