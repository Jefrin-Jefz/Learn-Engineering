import 'package:flutter/material.dart';
import 'package:learn_engg/view/video_player.dart';
import 'package:learn_engg/view/widgets/common_button.dart';

class WirelessComponentsScreen extends StatelessWidget {
  const WirelessComponentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wireless System Components'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: <Widget>[
          CommonButton(
            title: 'Transmitter',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const VideoPlayerView(
                      title: 'Wireless Transmitter',
                      videoUrl:
                          "https://firebasestorage.googleapis.com/v0/b/learn-engineering-be8de.appspot.com/o/VID-20230427-WA0039.mp4?alt=media&token=b5aa8a1b-9b1f-4302-be87-35b9deb66bde",
                      explanation:
                          'A wireless transmitter is a device that sends radio frequency signals to a receiver in a wireless communication system. It converts electrical signals into radio waves and sends them through an antenna, which broadcasts the signal to a receiver. The transmitter typically consists of an oscillator, a modulator, and an amplifier.'),
                ),
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Receiver',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const VideoPlayerView(
                      title: 'Wireless Receiver',
                      videoUrl:
                          "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
                      explanation:
                          'A wireless receiver is a device that captures radio frequency signals transmitted by a wireless transmitter and converts them into digital signals for use by a computer or other electronic device. The receiver typically consists of an antenna, a tuner, and a demodulator, which extract the information from the radio signal.'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
