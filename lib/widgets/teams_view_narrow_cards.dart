import 'package:flutter/material.dart';
import 'package:session_12_iti/services/extension.dart';

import '../config/app_colors.dart';
import '../models/team_user.dart';
import 'teams_user_card.dart';

class TeamViewNarrowCards extends StatelessWidget {
  const TeamViewNarrowCards({
    super.key,
    required this.users,
    this.crossAxisCount = 3,
  });

  final List<TeamUser> users;
  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Expanded(
      flex: 2,
      child: Container(
        color: AppColors.darkBackground,
        padding: EdgeInsets.symmetric(
          vertical: size.height * 0.06,
        ),
        height: size.height,
        child: GridView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.01, horizontal: 8),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.7,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                crossAxisCount: crossAxisCount),
            children: users
                .map(
                  (user) => TeamsUserCard(
                      user: user,
                      avatarBackground: AppColors.teamsAvatarColors.random),
                )
                .toList()),
      ),
    );
  }
}
