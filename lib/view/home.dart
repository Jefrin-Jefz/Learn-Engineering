import 'package:flutter/material.dart';
import 'package:learn_engg/data/mappings.dart';
import 'package:learn_engg/view/communication_screen.dart';
import 'package:learn_engg/view/electronics_screen.dart';
import 'package:learn_engg/view/qr_scanner.dart';
import 'package:learn_engg/view/video_player.dart';
import 'package:learn_engg/view/widgets/common_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Learn Engineering',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: <Widget>[
          CommonButton(
            title: 'Electronic Components',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ElectronicsScreen(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Communication components',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CommunicationScreen(),
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final String result = await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const QRScanner(),
            ),
          );
          final TopicData? data = mappings[result];
          if (data != null) {
            if (!mounted) return;
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => VideoPlayerView(data: data),
              ),
            );
          }
        },
        child: const Icon(Icons.qr_code_scanner),
      ),
    );
  }
}
