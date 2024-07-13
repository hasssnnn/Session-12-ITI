import 'package:flutter/material.dart';

class TableUITrialOne extends StatelessWidget {
  const TableUITrialOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),

      // raints:  Boxraints(minWidth: 200, maxHeight: 200),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.indigo),
          borderRadius: BorderRadius.circular(10)),

      child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text("", textAlign: TextAlign.center),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Details", textAlign: TextAlign.center),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Details", textAlign: TextAlign.center),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Details", textAlign: TextAlign.center),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Details", textAlign: TextAlign.center),
                ),
              ],
            ),
            Column(
              children: [
                Text("No.", textAlign: TextAlign.center),
                Text("1", textAlign: TextAlign.center),
                Text("1", textAlign: TextAlign.center),
                Text("1", textAlign: TextAlign.center),
                Text("1", textAlign: TextAlign.center),
              ],
            ),
            Column(
              children: [
                Text("Job", textAlign: TextAlign.center),
                Text("Clean", textAlign: TextAlign.center),
                Text("Home Trainer", textAlign: TextAlign.center),
                Text("Home Trainer", textAlign: TextAlign.center),
                Text("Clean", textAlign: TextAlign.center),
              ],
            ),
            Column(
              children: [
                Text("Manager", textAlign: TextAlign.center),
              ],
            ),
            Column(
              children: [
                Text("Status", textAlign: TextAlign.center),
              ],
            ),
            Column(
              children: [
                Text("Type", textAlign: TextAlign.center),
              ],
            ),
          ]),
    );
  }
}
