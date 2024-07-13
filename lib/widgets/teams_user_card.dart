import 'package:flutter/material.dart';

import '../config/app_colors.dart';
import '../models/team_user.dart';

class TeamsUserCard extends StatelessWidget {
  const TeamsUserCard({
    super.key,
    this.avatarBackground,
    required this.user,
  });
  final TeamUser user;
  final Color? avatarBackground;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width * 0.2,
      height: size.width * 0.10,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: AppColors.teamsCardColorsGradient,
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          border: Border.all(color: AppColors.borderColor, width: 0.7),
          borderRadius: BorderRadius.circular(5)),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          //
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            CircleAvatar(
              maxRadius: size.width * 0.026,
              minRadius: size.width * 0.01,
              backgroundColor: avatarBackground,
              child: Text(
                user.getUserSymbol(),
                textScaler: TextScaler.linear(size.width * 0.7 / size.height),
                style: const TextStyle(
                  color: AppColors.darkBackground,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.shadowBlack.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(4)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        user.fullName,
                        textScaler: TextScaler.linear(
                            size.width * 0.42 / size.height), //Extra
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Visibility(
                        visible: user.isMicOn,
                        replacement: Icon(
                          Icons.mic_off,
                          size: 16,
                          color: Colors.white.withOpacity(0.8),
                        ),
                        child: Icon(
                          Icons.mic,
                          size: 16,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
