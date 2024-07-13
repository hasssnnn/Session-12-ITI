import 'package:flutter/material.dart';
import 'package:session_12_iti/services/extension.dart';

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1000) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  height: size.height,
                  alignment: Alignment.center,
                  child: Text(
                    "1\nMore than 1000 width",
                    style: context.textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  height: size.height,
                  alignment: Alignment.center,
                  child: Text(
                    "2\nMore than 1000 width",
                    style: context.textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          );
        } else if (constraints.maxWidth < 1000) {
          return Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  height: size.height,
                  alignment: Alignment.center,
                  child: Text(
                    "1\nless than 1000 width",
                    style: context.textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  height: size.height,
                  alignment: Alignment.center,
                  child: Text(
                    "2\nless than 1000 width",
                    style: context.textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
