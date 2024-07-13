import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:session_12_iti/services/extension.dart';

import '../config/app_colors.dart';
import '../config/string_constants.dart';
import '../models/team_user.dart';
import '../services/enums.dart';

class TeamViewUsersList extends StatelessWidget {
  const TeamViewUsersList({
    super.key,
    required this.users,
  });

  final List<TeamUser> users;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Expanded(
      child: Container(
        color: AppColors.darkBackground,
        height: size.height,
        child: Column(
          children: [
            const ListTile(
              visualDensity: VisualDensity.compact,
              title: Text(
                "Participants",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              trailing: Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),

            Divider(
              indent: 0,
              endIndent: 0,
              color: AppColors.borderColor,
            ),
            // const TextField(
            //   decoration: InputDecoration(hintText: "Type a name"),
            // ),
            Flexible(
              child: Stack(
                //TODO: 1- stack fit
                //TODO: 2- reusable components
                //TODO: 3- Stack fit
                //TODO: 4- Test Every param in Elevated,Text,Outlined Buttons
                alignment: Alignment.topCenter,
                children: [
                  ListView.separated(
                    itemCount: users.length,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 48),
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        height: 12,
                      );
                    },
                    itemBuilder: (BuildContext context, int index) {
                      var user = users[index];
                      return InkWell(
                        onTap: () async {
                          showConfirmationDialog(
                            context: context,
                            style: AdaptiveStyle.macOS,
                            title: StringConstants.teamContextMenuTitle,
                            message: StringConstants.teamContextMenuMessage,
                            actions: MeetingAction.values.map((action) {
                              return AlertDialogAction(
                                key: action,
                                label: action.actionName,
                                isDestructiveAction:
                                    action == MeetingAction.remove,
                              );
                            }).toList(),
                          ).then((selectedAction) {
                            if (selectedAction == null) {
                              return;
                            }
                            if (selectedAction == MeetingAction.remove) {
                              //TODO perform delete logic
                            }
                          });
                        },
                        child: Row(
                          children: [
                            CircleAvatar(
                              maxRadius: 14,
                              backgroundColor:
                                  AppColors.teamsAvatarColors.random,
                              child: Text(
                                user.getUserSymbol(),
                                style: const TextStyle(
                                    color: AppColors.darkBackground,
                                    fontSize: 12),
                              ),
                            ),
                            const Gap(8),
                            Flexible(
                              flex: 3,
                              child: Text(
                                user.fullName,
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.8)),
                              ),
                            ),
                            const Spacer(
                              flex: 2,
                            ),
                            Visibility(
                                visible: user.isMicOn,
                                replacement: Icon(Icons.mic_off_outlined,
                                    size: 16,
                                    color: Colors.white.withOpacity(0.8)),
                                child: Icon(Icons.mic_none_rounded,
                                    size: 14,
                                    color: Colors.white.withOpacity(0.8))),
                          ],
                        ),
                      );
                    },
                  ),
                  ElevatedButton.icon(
                    icon: Transform.scale(
                      scale: 0.7,
                      child: const Icon(
                        Icons.ios_share,
                      ),
                    ),
                    onPressed: () {},
                    label: const Text(
                      "Share ",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        // disabledBackgroundColor: Colors.red,
                        iconColor: Colors.white,
                        fixedSize: Size(size.width * 0.24, 40),
                        elevation: 12,
                        side: BorderSide(color: AppColors.borderColor),
                        backgroundColor: AppColors.buttonDarkBackground),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
