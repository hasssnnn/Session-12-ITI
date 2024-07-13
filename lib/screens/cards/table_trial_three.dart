import 'package:flutter/material.dart';

import '../../config/app_colors.dart';
import '../../models/job.dart';

class TableUITrialThree extends StatelessWidget {
  const TableUITrialThree({
    super.key,
    required this.jobs,
  });
  final List<Job> jobs;

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
        child: ListView(
          shrinkWrap: true,
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
            ...(jobs
                .map(
                  (job) => Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: job.id.isEven
                        ? const BoxDecoration(
                            color: AppColors.tableRowGreyColor,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(10)),
                          )
                        : null,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Expanded(
                            child: Text(
                          "Details",
                          textAlign: TextAlign.center,
                        )),
                        Expanded(
                          child: Text(
                            job.id.toString(),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            job.name,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            job.manager,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Chip(
                            label: Text(job.status.status.$1),
                            backgroundColor: job.status.status.$2,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            job.type.name,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList())
          ],
        ),
      ),
    );
  }
}
