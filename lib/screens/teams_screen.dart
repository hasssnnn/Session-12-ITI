import 'package:flutter/material.dart';


import '../config/app_colors.dart';
import '../models/team_user.dart';
import '../widgets/teams_view_wide_screen.dart';

class TeamsScreen extends StatelessWidget {
  const TeamsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<TeamUser> users = [
      TeamUser.skipDetails("Mohammed Shaban"),
      TeamUser.skipDetails("Mostafa Mohammed"),
      TeamUser.skipDetails("Muhanned Magdy"),
      TeamUser.skipDetails("Maria Fadl"),
      TeamUser.skipDetails("AbdelNaser Gamal"),
      TeamUser.skipDetails("Ahmed Hassan"),
      TeamUser.skipDetails("Mohammed Oraby"),
      TeamUser.skipDetails("Rana Abdelrahman"),
      TeamUser.skipDetails("Motaz Osama"),
      TeamUser.skipDetails("Mahmoud Tantawy"),
      TeamUser.skipDetails("Zakaria Essa"),
      TeamUser.skipDetails("Mohammed Ahmed"),
      TeamUser.skipDetails("Mahmoud Nagdy"),
      TeamUser.skipDetails("Maria Fadl"),
      TeamUser.skipDetails("AbdelNaser Gamal"),
      TeamUser.skipDetails("Ahmed Hassan"),
      TeamUser.skipDetails("Mohammed Oraby"),
      TeamUser.skipDetails("Rana Abdelrahman"),
      TeamUser.skipDetails("Motaz Osama"),
      TeamUser.skipDetails("Mahmoud Tantawy"),
      TeamUser.skipDetails("Zakaria Essa"),
      TeamUser.skipDetails("Mohammed Ahmed"),
      TeamUser.skipDetails("Mahmoud Nagdy"),
    ];

    return Scaffold(
        backgroundColor: AppColors.darkBackground,
        body: TeamsViewWideView(users: users));
  }
}
