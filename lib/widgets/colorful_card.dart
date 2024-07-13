import 'package:flutter/material.dart';

import '../models/job.dart';

class ColorfulCard extends StatelessWidget {
  const ColorfulCard({super.key, required this.color, required this.job});
  final Color color;
  final Job? job;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      constraints: BoxConstraints(
        maxHeight: size.height * 0.15,
        maxWidth: size.width * 0.4,
      ),
      decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: color)),
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Text(
              job?.name ?? "No Name",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            SizedBox(
              width: 50,
              height: 30,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Chip(
                  label: Text(job?.status.status.$1 ?? ""),
                  backgroundColor: job?.status.status.$2,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              child: Icon(
                Icons.construction_rounded,
                size: 12,
              ),
            ),
          ],
        ),
        // const Gap(3),
        const SizedBox(
          height: 12,
        ),
        Visibility(
          visible: job?.duration != null && job?.onDate != null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "time",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                  width: 100,
                  child: Text(
                    // job?.onDate?.getFormatedDate() ?? "",//ِExtra
                    // job?.onDate?.toString() ?? "",
                    "${job?.onDate?.day}/${job?.onDate?.month}/${job?.onDate?.year}",
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  )),
              const Text(
                "Duration",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                // job?.duration?.getFormatedDuration() ?? "",
                "${job?.duration?.inMinutes} Mins",
              ),
            ],
          ),
        )
      ]),
    );
  }
}
