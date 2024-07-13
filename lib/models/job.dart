
import '../services/enums.dart';

class Job {
  final int id;
  final String name;
  final String manager;
  final JobStatus status;
  final JobType type;
  final Duration? duration;
  final DateTime? onDate;

  Job({
    required this.id,
    required this.name,
    required this.manager,
    required this.status,
    required this.type,
    this.duration,
    this.onDate,
  });

  static List<Job> dummyJobs = [
    Job(
        id: 1,
        name: "Clean Home",
        manager: "Akihiro",
        status: JobStatus.open,
        type: JobType.single,
        duration: const Duration(hours: 1),
        onDate: DateTime(2016, 5, 30, 14, 25)),
    Job(
      id: 2,
      name: "Home trainer",
      manager: "Emiyo",
      status: JobStatus.doing,
      type: JobType.period,
      duration: const Duration(hours: 2),
      onDate: DateTime(2017, 7, 23),
    ),
    Job(
      id: 3,
      name: "Home trainer",
      manager: "Eichi",
      status: JobStatus.done,
      type: JobType.single,
      duration: const Duration(minutes: 40),
      onDate: DateTime(2022, 1, 3),
    ),
    Job(
      id: 4,
      name: "Clean home",
      manager: "Azami",
      status: JobStatus.canceled,
      type: JobType.period,
      duration: const Duration(minutes: 15),
      onDate: DateTime(2022, 12, 30),
    ),
    Job(
      id: 5,
      name: "Intro Flutter",
      manager: "Adel",
      status: JobStatus.doing,
      type: JobType.period,
      duration: const Duration(hours: 6),
      onDate: DateTime(2024, 7, 11),
    ),
    Job(
      id: 6,
      name: "Moving",
      manager: "Hana",
      status: JobStatus.canceled,
      type: JobType.period,
      duration: const Duration(hours: 3),
      onDate: DateTime(2020, 2, 1),
    ),
    Job(
      id: 7,
      name: "Fixing",
      manager: "Bassant",
      status: JobStatus.doing,
      type: JobType.period,
      duration: const Duration(hours: 3),
      onDate: DateTime(2020, 2, 1),
    ),
    Job(
      id: 8,
      name: "Fixing",
      manager: "Ali",
      status: JobStatus.canceled,
      type: JobType.single,
      duration: const Duration(hours: 3),
      onDate: DateTime(2020, 2, 1),
    ),
    Job(
      id: 9,
      name: "Moving",
      manager: "Hana",
      status: JobStatus.canceled,
      type: JobType.period,
      duration: const Duration(hours: 3),
      onDate: DateTime(2020, 2, 1),
    ),
    Job(
      id: 10,
      name: "Fixing",
      manager: "Bassant",
      status: JobStatus.doing,
      type: JobType.period,
      duration: const Duration(hours: 3),
      onDate: DateTime(2020, 2, 1),
    ),
    Job(
      id: 11,
      name: "Fixing",
      manager: "Ali",
      status: JobStatus.canceled,
      type: JobType.single,
      duration: const Duration(hours: 3),
      onDate: DateTime(2020, 2, 1),
    )
  ];
}
