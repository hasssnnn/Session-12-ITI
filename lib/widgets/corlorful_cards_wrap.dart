import 'package:flutter/material.dart';
import 'package:session_12_iti/services/extension.dart';

import '../models/job.dart';
import 'colorful_card.dart';


class ColorfulCardsWrap extends StatelessWidget {
  const ColorfulCardsWrap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 12,
      runSpacing: 16,
      children: [
        ColorfulCard(
          color: Colors.green,
          job: Job.dummyJobs.random,
        ),
        ColorfulCard(
          color: Colors.indigo,
          job: Job.dummyJobs.random,
        ),
        ColorfulCard(
          color: Colors.red,
          job: Job.dummyJobs.random,
        ),
        ColorfulCard(
          color: Colors.orange,
          job: Job.dummyJobs.random,
        ),
      ],
    );
  }
}
