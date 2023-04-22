import 'package:flutter/material.dart';
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
              // plays an animation
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
