import 'package:flutter/material.dart';

import 'screens/buttons/buttons_screen.dart';
import 'screens/cards/cards_screen.dart';
import 'screens/revision_one_screen.dart';
import 'screens/teams_adaptive_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //ValueKey,UniqueKey,.....Later
  //Hot Reload vs hot Restart

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Fayoum",
      home: const ButtonsScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: false),
      routes: {
        "/buttons": (context) => const ButtonsScreen(),
        "/teams": (context) => const TeamsAdaptiveScreen(),
        "/revision_one": (context) => const RevisionScreen(),
        "/cards": (context) => const CardsScreen(),
      },
    );
  }
}
