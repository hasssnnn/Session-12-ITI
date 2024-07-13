class DoctorData {
  final int id;
  final String name;
  final String speciality;
  final String commericalReg;

  DoctorData(
      {required this.id,
      required this.name,
      required this.speciality,
      required this.commericalReg});
}

typedef NurseData = DoctorData;

List<DoctorData> doctors = [
  DoctorData(
      id: 0,
      name: "Dr. ABC",
      speciality: "General Practitioner",
      commericalReg: "1234567890"),
  DoctorData(
      id: 1,
      name: "Dr. XYZ",
      speciality: "General Practitioner",
      commericalReg: "1234567890"),
];

List<NurseData> nurses = [
  NurseData(
      id: 0,
      name: "Nurse ABC",
      speciality: "General Practitioner",
      commericalReg: "1234567890"),
  NurseData(
      id: 1,
      name: "Nurse XYZ",
      speciality: "General Practitioner",
      commericalReg: "1234567890"),
];

typedef StudentRecord = (String, String, int, int);
