import 'package:flutter/material.dart';
import 'package:session_12_iti/services/extension.dart';

import 'dummy_screen_four.dart';

// CASH ON DELIVERRY
//Talabat
// home : products: (V cola):(cola details screen(photos -details -add button)):--add to cart---> (Cart Screen): address select screen: ---add new address-> (payment screen):---Visa--> Bank Payment Gateway ---> (Payment Successfull screen): Products

class DummyScreenThree extends StatelessWidget {
  const DummyScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dummy Screen Three'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Dummy Screen Three'),
            IconButton(
                onPressed: () {
                  context.navigator
                      // .push<String>(
                      .push(MaterialPageRoute(
                          builder: (context) => const DummyScreenFour()))
                      .then((courseVal) {
                    if (courseVal is String) {
                      print(courseVal.toUpperCase());
                    } else if (courseVal is List<int>) {
                      print(courseVal.first);
                    } else if (courseVal is bool) {
                      print("Thank you for applying :$courseVal");
                    }
                  });
                },
                icon: const Icon(Icons.arrow_right_alt)),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: const Text('Back Home'))
          ],
        ),
      ),
    );
  }
}
                  // Navigator.of(context).popUntil((route) => route.settings.name == "/products_screen" );
