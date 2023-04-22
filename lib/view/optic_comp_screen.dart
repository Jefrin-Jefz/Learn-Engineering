import 'package:flutter/material.dart';
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
              // plays animation for source
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Fiber',
            onPressed: () {
              // plays an animation of fibers
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Repeaters',
            onPressed: () {
              // plays an animation of repeater
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Detector (Receiver)',
            onPressed: () {
              // plays an animation
            },
          ),
        ],
      ),
    );
  }
}
