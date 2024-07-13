import 'package:flutter/material.dart';
import 'package:session_12_iti/services/extension.dart';

import '../config/app_colors.dart';
import '../models/team_user.dart';
import 'teams_user_card.dart';

class TeamViewWideCards extends StatelessWidget {
  const TeamViewWideCards({
    super.key,
    required this.users,
  });

  final List<TeamUser> users;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Expanded(
      flex: 3,
      child: SizedBox(
        child: Container(
          color: AppColors.darkBackground,
          padding: EdgeInsets.symmetric(
            vertical: size.height * 0.06,
          ),
          height: size.height,
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: size.width * 0.2,
              ),
              child: Wrap(
                  alignment: WrapAlignment.center,
                  direction: Axis.horizontal,
                  spacing: 4,
                  runSpacing: 4,
                  children: users
                      .map(
                        (user) => TeamsUserCard(
                            user: user,
                            avatarBackground:
                                AppColors.teamsAvatarColors.random),
                      )
                      .toList()),
            ),
          ),
        ),
      ),
    );
  }
}
