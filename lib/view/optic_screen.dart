import 'package:flutter/material.dart';
import 'package:learn_engg/view/optic_comp_screen.dart';
import 'package:learn_engg/view/video_player.dart';
import 'package:learn_engg/view/widgets/common_button.dart';

class OpticScreen extends StatelessWidget {
  const OpticScreen({Key? key}) : super(key: key);

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
            title: 'General System',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const VideoPlayerView(
                      title: 'General Optic System',
                      videoUrl:
                          "https://firebasestorage.googleapis.com/v0/b/learn-engineering-be8de.appspot.com/o/VID-20230427-WA0039.mp4?alt=media&token=b5aa8a1b-9b1f-4302-be87-35b9deb66bde",
                      explanation:
                          'An optical fiber system is a communication technology that uses thin strands of glass or plastic fibers to transmit digital data signals over long distances at high speeds. The signals are converted into light pulses and sent through the fibers, which are protected by a cladding material that reflects the light back into the fiber.'),
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
                  builder: (context) => const OpticComponentsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
