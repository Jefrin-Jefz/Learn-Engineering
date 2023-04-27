import 'package:flutter/material.dart';
import 'package:learn_engg/view/widgets/common_button.dart';

class ElectronicPassiveComponentScreen extends StatelessWidget {
  const ElectronicPassiveComponentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Passive Components'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: <Widget>[
          CommonButton(
            title: 'General Overview',
            onPressed: () {
              //plays video
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Resistor',
            onPressed: () {},
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Inductor',
            onPressed: () {},
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Capacitor',
            onPressed: () {},
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Sensors',
            onPressed: () {},
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'PCB',
            onPressed: () {},
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Bread Board',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
