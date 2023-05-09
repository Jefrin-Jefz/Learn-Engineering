import 'package:flutter/material.dart';
import 'package:learn_engg/view/video_player.dart';
import 'package:learn_engg/view/widgets/common_button.dart';
import 'package:learn_engg/view/wireless_components_screen.dart';
import 'package:learn_engg/view/wireless_modulation_view.dart';

class WirelessScreen extends StatelessWidget {
  const WirelessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wireless Systems'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: <Widget>[
          CommonButton(
            title: 'General System',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const VideoPlayerView(
                      title: 'General Wireless System',
                      videoUrl:
                          "https://firebasestorage.googleapis.com/v0/b/learn-engineering-be8de.appspot.com/o/VID-20230427-WA0039.mp4?alt=media&token=b5aa8a1b-9b1f-4302-be87-35b9deb66bde",
                      explanation:
                          'A wireless communication system is a technology that uses radio frequency signals to transmit data wirelessly between devices. It allows for communication without the need for physical connections such as wires or cables. Wireless systems are used in many applications, including cellular networks, Wi-Fi, Bluetooth, and satellite communication.'),
                ),
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Components',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const WirelessComponentsScreen(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Modulation Techniques',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const WirelessModulationScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
