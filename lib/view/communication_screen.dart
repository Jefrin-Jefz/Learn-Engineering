import 'package:flutter/material.dart';
import 'package:learn_engg/view/optic_screen.dart';
import 'package:learn_engg/view/widgets/common_button.dart';
import 'package:learn_engg/view/wireless_screen.dart';

class CommunicationScreen extends StatelessWidget {
  const CommunicationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Communication Systems'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: <Widget>[
          CommonButton(
            title: 'Optical Communication',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const OpticScreen(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Wireless Communication',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const WirelessScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
