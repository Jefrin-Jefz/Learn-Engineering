import 'package:flutter/material.dart';
import 'package:learn_engg/view/video_player.dart';
import 'package:learn_engg/view/widgets/common_button.dart';

class OpticComponentsScreen extends StatelessWidget {
  const OpticComponentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Optical Systems'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: <Widget>[
          CommonButton(
            title: 'Source (Transmitter)',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const VideoPlayerView(
                      title: 'Optical Transmitter',
                      videoUrl:
                          "https://firebasestorage.googleapis.com/v0/b/learn-engineering-be8de.appspot.com/o/VID-20230427-WA0039.mp4?alt=media&token=b5aa8a1b-9b1f-4302-be87-35b9deb66bde",
                      explanation:
                          'An optical transmitter is a device that converts electrical signals into optical signals for transmission over an optical fiber network. It typically includes a light source, such as a laser or LED, and a modulation circuit that controls the intensity and frequency of the light to represent the data being transmitted.'),
                ),
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Fiber',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const VideoPlayerView(
                      title: 'Optic Fiber',
                      videoUrl:
                          "https://firebasestorage.googleapis.com/v0/b/learn-engineering-be8de.appspot.com/o/VID-20230427-WA0039.mp4?alt=media&token=b5aa8a1b-9b1f-4302-be87-35b9deb66bde",
                      explanation:
                          'An optical fiber is a thin, flexible, and transparent strand of glass or plastic that is used to transmit digital data signals over long distances. The fiber acts as a waveguide, with the light signals bouncing off the inner surface of the fiber, allowing for high-speed and low-loss data transmission.'),
                ),
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Detector (Receiver)',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const VideoPlayerView(
                      title: 'Optic Receiver',
                      videoUrl:
                          "https://firebasestorage.googleapis.com/v0/b/learn-engineering-be8de.appspot.com/o/VID-20230427-WA0039.mp4?alt=media&token=b5aa8a1b-9b1f-4302-be87-35b9deb66bde",
                      explanation:
                          'An optical receiver is a device that converts optical signals into electrical signals. It is used in optical fiber communication systems to receive data transmitted over an optical fiber. The receiver consists of a photodiode that converts the light signals into electrical signals, which are then processed and decoded by the receiving device.'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
