import 'package:flutter/material.dart';

import '../../config/app_colors.dart';
import '../../services/enums.dart';

class TableUITrialTwo extends StatelessWidget {
  const TableUITrialTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.indigo),
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.tableBorderColor),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: const BoxDecoration(
                color: AppColors.tableRowGreyColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              ),
              child: Container(
                color: AppColors.tableRowGreyColor,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: Text(
                      "",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: AppColors.tableTitleColor),
                    )),
                    Expanded(
                        child: Text(
                      "No.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: AppColors.tableTitleColor),
                    )),
                    Expanded(
                        child: Text(
                      "Job",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: AppColors.tableTitleColor),
                    )),
                    Expanded(
                        child: Text(
                      "Manager",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: AppColors.tableTitleColor),
                    )),
                    Expanded(
                        child: Text(
                      "Status",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: AppColors.tableTitleColor),
                    )),
                    Expanded(
                        child: Text(
                      "Type",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: AppColors.tableTitleColor),
                    )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Expanded(
                      child: Text(
                    "Details",
                    textAlign: TextAlign.center,
                  )),
                  const Expanded(
                    child: Text(
                      "1",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      "Clean Home",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      "Akihiro",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Chip(
                      label: Text(JobStatus.open.status.$1),
                      backgroundColor: JobStatus.open.status.$2,
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      "Single",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: const BoxDecoration(
                color: AppColors.tableRowGreyColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Expanded(
                    child: Text(
                      "Details",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      "2",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      "Home trainer",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      "Emiyo",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Chip(
                      label: Text(JobStatus.doing.status.$1),
                      backgroundColor: JobStatus.doing.status.$2,
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      "Period",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Expanded(
                      child: Text("Details", textAlign: TextAlign.center)),
                  const Expanded(child: Text("3", textAlign: TextAlign.center)),
                  const Expanded(
                      child: Text("Home trainer", textAlign: TextAlign.center)),
                  const Expanded(
                      child: Text("Eichi", textAlign: TextAlign.center)),
                  Expanded(
                    child: Chip(
                      label: Text(JobStatus.done.status.$1),
                      backgroundColor: JobStatus.done.status.$2,
                    ),
                  ),
                  const Expanded(
                      child: Text("Single", textAlign: TextAlign.center)),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: const BoxDecoration(
                color: AppColors.tableRowGreyColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Expanded(
                      child: Text("Details", textAlign: TextAlign.center)),
                  const Expanded(child: Text("4", textAlign: TextAlign.center)),
                  const Expanded(
                      child: Text("Clean home", textAlign: TextAlign.center)),
                  const Expanded(
                      child: Text("Azami", textAlign: TextAlign.center)),
                  Expanded(
                    child: Chip(
                      label: Text(JobStatus.canceled.status.$1),
                      backgroundColor: JobStatus.canceled.status.$2,
                    ),
                  ),
                  const Expanded(
                      child: Text("Period", textAlign: TextAlign.center)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
