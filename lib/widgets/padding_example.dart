import 'package:flutter/material.dart';

class PaddingExample extends StatelessWidget {
  const PaddingExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                padding: const EdgeInsets.all(30),
                height: 200,
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
