import 'package:flutter/material.dart';

import 'dummy_screen_two.dart';

class DummyScreenOne extends StatelessWidget {
  const DummyScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dummy Screen One'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Dummy Screen One'),
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const DummyScreenTwo();
                    },
                  ));
                },
                icon: const Icon(Icons.arrow_right_alt))
          ],
        ),
      ),
    );
  }
}
