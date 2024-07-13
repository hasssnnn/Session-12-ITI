import 'package:flutter/material.dart';

import '../../widgets/corlorful_cards_wrap.dart';

//5 Cards design for same UI:

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards", textAlign: TextAlign.center),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Flexible(
            //   child: TableUITrialThree(
            //     jobs: Job.dummyJobs,
            //   ),
            // ),
            ColorfulCardsWrap()
          ],
        ),
      ),
    );
  }
}
