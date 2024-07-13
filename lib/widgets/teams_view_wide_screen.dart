import 'package:flutter/material.dart';

import '../config/app_colors.dart';
import '../models/team_user.dart';
import 'teams_view_user_list.dart';
import 'teams_view_wide_cards.dart';

class TeamsViewWideView extends StatelessWidget {
  const TeamsViewWideView({
    super.key,
    required this.users,
  });

  final List<TeamUser> users;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Row(
      children: [
        TeamViewWideCards(users: users),
        Container(
          color: AppColors.borderColor,
          width: 1,
          height: size.height,
          // width: 5,
        ),
        TeamViewUsersList(users: users),
      ],
    );
  }
}
