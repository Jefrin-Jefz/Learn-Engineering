import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:learn_engg/app.dart';

import 'firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // ignore: deprecated_member_use
  FlutterNativeSplash.removeAfter(initialization);
  runApp(const LearnEnggApp());
}

Future initialization(BuildContext? context) async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
