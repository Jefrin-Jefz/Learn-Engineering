import 'package:flutter/material.dart';
import 'package:learn_engg/view/widgets/common_button.dart';

class ElectronicActiveComponentScreen extends StatelessWidget {
  const ElectronicActiveComponentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Active Components'),
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
            title: 'Transistor',
            onPressed: () {},
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Half Wave Rectifier',
            onPressed: () {},
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Full Wave Rectifier',
            onPressed: () {},
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Light Emitting Diode (LED)',
            onPressed: () {},
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Liquid Crystal Display (LCD)',
            onPressed: () {},
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Amplifiers',
            onPressed: () {},
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Integrated Circuits (IC)',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
