import 'package:flutter/material.dart';
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
              // plays an animation
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Frequency Modulation',
            onPressed: () {
              // plays animation
            },
          ),
        ],
      ),
    );
  }
}
