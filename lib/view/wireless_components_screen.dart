import 'package:flutter/material.dart';
import 'package:learn_engg/data/mappings.dart';
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
                  builder: (context) => VideoPlayerView(
                    data: mappings['wirelessTransmitter']!,
                  ),
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
                  builder: (context) => VideoPlayerView(
                    data: mappings['wirelessReceiver']!,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
