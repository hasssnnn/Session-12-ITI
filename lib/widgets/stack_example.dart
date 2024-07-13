import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.red,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Align(
              alignment: Alignment.center,
              child: RotatedBox(quarterTurns: 1, child: Text("Start"))),
          Positioned(
            top: 250,
            left: 250,
            child: Container(
              color: Colors.indigo,
              child: const Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("End OF Menu"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAppBar({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: const Text("Revison Day 9"),
//     );
//   }

//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => const Size.fromHeight(60);
// }
