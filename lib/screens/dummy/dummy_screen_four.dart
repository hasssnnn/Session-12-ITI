import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';

class DummyScreenFour extends StatelessWidget {
  const DummyScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dummy Screen Four'),
        backgroundColor: Colors.yellowAccent[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Dummy Screen Four'),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_right_alt)),
            ElevatedButton(
              child: const Text("End This Course ?"),
              onPressed: () async {
                var courseRes = await showOkCancelAlertDialog(
                    context: context,
                    title: "FeedBack",
                    message: "Did this course match your expectations ?",
                    okLabel: "Yes",
                    cancelLabel: "No");
                // if(mounted)//only in stateful widget
                if (!context.mounted) return;
                Navigator.of(context).pop(courseRes == OkCancelResult.ok);
              },
            )
          ],
        ),
      ),
    );
  }
}
