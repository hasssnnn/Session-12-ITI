import 'package:flutter/material.dart';


import '../config/app_colors.dart';
import '../models/team_user.dart';
import '../widgets/teams_view_narrow_cards.dart';
import '../widgets/teams_view_user_list.dart';
import '../widgets/teams_view_wide_screen.dart';

class TeamsAdaptiveScreen extends StatelessWidget {
  const TeamsAdaptiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.sizeOf(context).width);
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
      appBar: AppBar(
        title: const Text("Fayoum Meeting"),
        backgroundColor: AppColors.darkBackground,
        elevation: 14,
        centerTitle: true,
        // bottom: ,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1200) {
            return TeamsViewWideView(users: users);
          } else if (constraints.maxWidth > 920) {
            //TODO: fix next widgets with Scaffold + extract each widget to its own file
            return Column(
              children: [
                Row(
                  children: [
                    TeamViewNarrowCards(users: users, crossAxisCount: 3),
                    TeamViewUsersList(users: users),
                  ],
                ),
              ],
            );
          } else if (constraints.maxWidth > 800) {
            return Column(
              children: [
                TeamViewNarrowCards(users: users, crossAxisCount: 4),
              ],
            );
          } else if (constraints.maxWidth > 680) {
            return Column(
              children: [
                TeamViewNarrowCards(users: users, crossAxisCount: 3),
              ],
            );
          } else {
            return Column(
              children: [
                TeamViewUsersList(users: users),
              ],
            );
          }
        },
      ),
    );
  }
}
