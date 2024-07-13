import 'package:flutter/material.dart' show Color;

import '../config/app_colors.dart';

enum TeamRole {
  unknown(""),
  roleGuest("Guest"),
  roleUnverified("Unverified"),
  roleExternal("External");

  final String type;
  const TeamRole(this.type);
}

enum MeetingAction {
  mute("Mute Participant"),
  spotlight("Spotlight for everyone"),
  attendee("Make an attendee"),
  remove("Remove from meeting");

  final String actionName;
  const MeetingAction(this.actionName);
}

enum JobStatus {
  open(("Open", AppColors.openStatusColor)),
  doing(("Doing", AppColors.doingStatusColor)),
  done(("Done", AppColors.doneStatusColor)),
  canceled(("Canceled", AppColors.canceledStatusColor));

  final (String, Color) status;

  const JobStatus(this.status);
}

enum JobType { single, period }
