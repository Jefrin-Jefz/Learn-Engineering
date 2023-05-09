import 'package:flutter/material.dart';
import 'package:learn_engg/view/video_player.dart';
import 'package:learn_engg/view/widgets/common_button.dart';

class WirelessModulationScreen extends StatelessWidget {
  const WirelessModulationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modulation Techniques'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: <Widget>[
          CommonButton(
            title: 'Amplitude Modulation',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const VideoPlayerView(
                      title: 'Amplitude Modulation',
                      videoUrl:
                          "https://firebasestorage.googleapis.com/v0/b/learn-engineering-be8de.appspot.com/o/VID-20230427-WA0039.mp4?alt=media&token=b5aa8a1b-9b1f-4302-be87-35b9deb66bde",
                      explanation:
                          'Amplitude modulation (AM) is a type of modulation where the amplitude of a carrier signal is varied in proportion to the message signal being transmitted. The resulting modulated signal contains the original message signal and the carrier signal, which can be demodulated to extract the original message signal.'),
                ),
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Frequency Modulation',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const VideoPlayerView(
                      title: 'Frequency Modulation',
                      videoUrl:
                          "https://firebasestorage.googleapis.com/v0/b/learn-engineering-be8de.appspot.com/o/VID-20230427-WA0039.mp4?alt=media&token=b5aa8a1b-9b1f-4302-be87-35b9deb66bde",
                      explanation:
                          'Frequency modulation (FM) is a type of modulation where the frequency of a carrier signal is varied in proportion to the message signal being transmitted. The resulting modulated signal contains the original message signal and the carrier signal, which can be demodulated to extract the original message signal. FM is often used in radio communication due to its resistance to noise.'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
