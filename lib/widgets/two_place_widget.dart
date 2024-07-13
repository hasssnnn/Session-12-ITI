import 'package:flutter/material.dart';

import '../config/app_colors.dart';

class TwoPlaceWidget extends StatelessWidget {
  const TwoPlaceWidget(
      {super.key, required this.placeOne, required this.placeTwo});
  final String? placeOne;
  final String? placeTwo;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColors.color1,
                  borderRadius: BorderRadius.circular(25)),
              width: 75,
              height: 75,
              child: Text(placeOne ?? "---"),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColors.color2,
                  borderRadius: BorderRadius.circular(25)),
              width: 75,
              height: 75,
              child: Text(placeTwo ?? "---"),
            ),
          ),
        ],
      ),
    );
  }
}
