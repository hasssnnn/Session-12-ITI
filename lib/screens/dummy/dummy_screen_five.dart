import 'package:flutter/material.dart';

class DummyScreenFive extends StatelessWidget {
  const DummyScreenFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dummy Screen Five'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Dummy Screen Five'),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_left_rounded))
          ],
        ),
      ),
    );
  }
}
