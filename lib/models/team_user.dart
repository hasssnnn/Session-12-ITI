
import 'package:session_12_iti/services/extension.dart';

import '../services/enums.dart';

class TeamUser {
  final String? name;
  final TeamRole? role;
  final bool isMicOn;

  TeamUser({this.name, this.role, this.isMicOn = false});

  TeamUser.skipDetails(this.name)
      : role = TeamRole.values
            .where((role) => role != TeamRole.unknown)
            .toList()
            .random,
        isMicOn = false;

  String getUserSymbol() {
    if (name == null) return "";
    List<String> splittedName = name?.split(" ") ?? [];
    int length = splittedName.length;
    switch (length) {
      case 1:
        return splittedName.first[0];
      default:
        return "${splittedName.first[0]}${splittedName[1][0]}";
    }
  }

  get fullName => "$name (${role?.type})";
}
