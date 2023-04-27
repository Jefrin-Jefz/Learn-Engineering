import 'package:flutter/material.dart';
import 'package:learn_engg/view/electronic_active_component_screen.dart';
import 'package:learn_engg/view/electronic_passive_component_screen.dart';
import 'package:learn_engg/view/widgets/common_button.dart';

class ElectronicsScreen extends StatelessWidget {
  const ElectronicsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Electronic Components'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: <Widget>[
          CommonButton(
            title: 'Active Components',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ElectronicActiveComponentScreen(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Passive Components',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      const ElectronicPassiveComponentScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
