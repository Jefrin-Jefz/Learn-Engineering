import 'package:flutter/material.dart';
import 'package:learn_engg/view/communication_screen.dart';
import 'package:learn_engg/view/widgets/common_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Learn Engineering',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: <Widget>[
          CommonButton(
            title: 'Electronic Components',
            onPressed: () {},
          ),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            title: 'Communication components',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CommunicationScreen(),
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.camera_alt_rounded),
      ),
    );
  }
}
