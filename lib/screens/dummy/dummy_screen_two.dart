import 'package:flutter/material.dart';

import 'dummy_screen_three.dart';

class DummyScreenTwo extends StatelessWidget {
  const DummyScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dummy Screen Two'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Dummy Screen Two'),
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DummyScreenThree(),
                  ));
                },
                icon: const Icon(Icons.arrow_right_alt)),
          ],
        ),
      ),
    );
  }
}
