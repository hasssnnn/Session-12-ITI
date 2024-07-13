import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:session_12_iti/services/extension.dart';


import '../../config/app_colors.dart';
import '../dummy/dummy_screen_one.dart';
import '../teams_adaptive_screen.dart';

//Widget Tree ,Element Tree , Render Tree :=> Rendering : [IMPORTANT:flutter/shell/platform/darwin/graphics/FlutterDarwinContextMetalSkia.mm(66)] Using the Skia rendering backend (Metal).
//Skia Engine : C++ => Janking iOS
// Impeller
//https://medium.com/@wartelski/impeller-rendering-engine-is-it-good-enough-for-flutter-ff2677714343
//https://docs.flutter.dev/perf/impeller
// Android Native ,, Flutter

//ListView :
//ListView.Builder(..): Recycler View
//Life Cycle

// Navigation 1.0 //Navigation 2.0 : Out of scope
class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example Buttons"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // RaisedButton() => ElevatedButton()
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text("ElevatedButton"),
                  const Spacer(
                    flex: 2,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // maximumSize: const Size(490, 40),

                      // minimumSize: const Size(290, 40),
                      backgroundColor: AppColors.color1.withOpacity(0.7),
                      foregroundColor: Colors.white,
                      // shape: RoundedRectangleBorder(

                      // )
                      // shape: const StadiumBorder(
                      //   side: BorderSide(color: Colors.black),
                      // ),
                    ),

                    //! route
                    //! CupertinoPageRoute vs MaterialPageRoute
                    //! required Widget Function(BuildContext) builder:
                    //! a required named param inside .push method in Navigator
                    //! it takes a context as an argument and returns a widget
                    onPressed: () {
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) {
                      //   return const TeamsAdaptiveScreen();
                      // }));

                      // Theme.of(context).textTheme;
                      // Scaffold.of(context).showSnackBar();
                      // ScaffoldMessenger.of(context)
                      // GoRouter.of
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const TeamsAdaptiveScreen(),
                          fullscreenDialog: true,
                        ),
                      );
                    },
                    child: const Text(
                        "Simple Elevated Button: Teams Screen(MaterialPageRoute)"),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.color1.withOpacity(0.7),
                      foregroundColor: Colors.white,
                      // shape: RoundedRectangleBorder(
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/teams");
                    },
                    icon: const Icon(Icons.abc),
                    label: const Text(
                        "Simple Elevated Button: Teams Screen(NamedRoute)"),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text("TextButton"),
                  const Spacer(
                    flex: 2,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.color1.withOpacity(0.7),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      // context.navigator.pop();//EXTRA
                    },
                    child: const Text("Simple Text Button: Pop Screen"),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  TextButton.icon(
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.color1.withOpacity(0.7),
                    ),
                    onPressed: () {
                      if (context.navigator.canPop()) {
                        // context.navigator.pop();//Extra
                        Navigator.of(context).pop();
                      }
                    },
                    icon: const Icon(Icons.abc),
                    label: const Text("Simple Text Button:Pop if Possbile"),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text("MaterialButton"),
                  const Spacer(
                    flex: 2,
                  ),
                  MaterialButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text("I really hate this course"),
                          action: SnackBarAction(
                            label: "I don't care",
                            onPressed: () {
                              context.scaffoldMessenger
                                  .clearSnackBars(); //Extra
                            },
                          ),
                        ),
                      );
                    },
                    child: const Text("Simple Material Button: Show SnackBar"),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text("OutlinedButton"),
                  const Spacer(
                    flex: 2,
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      // maximumSize: const Size(490, 40),

                      // minimumSize: const Size(290, 40),

                      foregroundColor: AppColors.color1.withOpacity(0.7),
                      // shape: RoundedRectangleBorder(

                      // )
                      // shape: const StadiumBorder(
                      //   side: BorderSide(color: Colors.black),
                      // ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const DummyScreenOne()));
                    },
                    child: const Text("Simple Outlined Button:>DummyScreenOne"),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      // maximumSize: const Size(490, 40),

                      // minimumSize: const Size(290, 40),
                      foregroundColor: AppColors.color1.withOpacity(0.7),
                      // shape: RoundedRectangleBorder(

                      // )
                      // shape: const StadiumBorder(
                      //   side: BorderSide(color: Colors.black),
                      // ),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.abc),
                    label: const Text("Simple Outlined Button"),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text("Icon with InkWell + GestureDetector"),
                  const Spacer(
                    flex: 1,
                  ),
                  InkWell(
                    highlightColor: Colors.red,
                    hoverColor: Colors.green,
                    onLongPress: () {
                      print("Long pressing");
                    },

                    // onHover: (isHovering) {
                    //   if (isHovering == false) return;
                    //   showOkAlertDialog(
                    //       context: context,
                    //       title: "Not Ready Today",
                    //       message: "Please Don't CLick");
                    // },
                    onTap: () {
                      showOkAlertDialog(
                          context: context,
                          title: "Icon Pressed",
                          message: "Thank You!");
                    },
                    child: const Icon(
                      Icons.female_rounded,
                      size: 52,
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  GestureDetector(
                    onTap: () {
                      showOkAlertDialog(
                          context: context,
                          title: "Icon Pressed",
                          message: "Thank You!");
                    },
                    child: const Icon(
                      Icons.male_rounded,
                      size: 52,
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text("IconButton"),
                  const Spacer(
                    flex: 1,
                  ),
                  IconButton(
                    onPressed: () {
                      showOkAlertDialog(
                          context: context,
                          title: "Icon Pressed",
                          message: "Thank You!");
                    },
                    icon: const Icon(
                      Icons.person_rounded,
                      size: 24,
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
