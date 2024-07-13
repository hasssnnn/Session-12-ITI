import "dart:html" as html; // only in webproject

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';

import '../config/app_colors.dart';
import '../models/place.dart';
import '../widgets/place_card.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> myStudents = [
      // "Maria",
      // "Mario",
      // "Sara",
      // "Nagdy",
      "Esraa",
      "Ahmed",
      "Abdelnasr",
      "Mohammed"
    ];

    List<Place> places = [
      Place(
        name: "Fayoum",
        description: "Best place in Fayoum",
        imageUrl:
            "https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcREb2hx6UsK7CgMvOyxWd_xLmkB_jmWZc5w0Jo5ZOFQWhY0PzPLTIxhjrv4DP9XpfitTYIhuUSS6D-wwIX_S8vLS_pq2P48MbZyOEHbXg",
        weblink: "https:google.com/search?q=Fayoum",
      ),
      Place(
        name: "Giza",
        description: "Best place in Giza",
        imageUrl:
            "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcS8u6iLDlk-Xi_coyLWa5e8nLw4gb2FaXlbKyGwpPy_eHeCM_mCERThB97yDQExWhup1mGRtzB9HkP0apk28RXLJ8jJAQ3LTdNgZNm_Hg",
        weblink: "https:/google.com/search?q=Giza",
      ),
      Place(
        name: "Cairo",
        description: "Best place in Cairo",
        imageUrl:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/View_from_Cairo_Tower_31march2007.jpg/1563px-View_from_Cairo_Tower_31march2007.jpg",
        weblink: "https:/google.com/search?q=Cairo",
      ),
      Place(
        name: "Minya",
        description: "Best place in Minya",
        imageUrl:
            "https://lh5.googleusercontent.com/p/AF1QipOSUc8tmlIx7wJ2i_zuSIKP0RKoXsEUh6DhgimH=w1080-h624-n-k-no",
        weblink: "https:/google.com/search?q=Minya",
      ),
      Place(
        name: "Beni Suef",
        description: "Best place in Beni Suef",
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpW9h5qyMl0hmTaYKcpmUPNZrsrP26d8PX3g&s",
        weblink: "https:/google.com/search?q=Beni&Suef",
      )
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.vaniallaLatte,
          title: const Text(
            "Second Screen",
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          actions: [
            IconButton(
              onPressed: () async {
                var selectedCityQuery = await showModalActionSheet(
                  context: context,
                  isDismissible: true,
                  title: "Please select City",
                  message: "You will be redirected to external webiste.",
                  actions: places
                      .map((place) => SheetAction(
                            label: place.name ?? "No Name",
                            key: place.name,
                            icon: Icons.travel_explore_sharp,
                          ))
                      .toList(),
                );
                if (selectedCityQuery == null) return;
                html.window.open(
                    "https://google.com/search?q=$selectedCityQuery", "_blank");
              },
              icon: const Icon(
                Icons.format_list_numbered_rounded,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: GridView.builder(
            itemCount: places.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.9),
            itemBuilder: (context, index) {
              var place = places[index];
              return PlaceCardWidget(
                place: place,
                onTap: () async {
                  var link = place.weblink;
                  OkCancelResult openLinkRequest =
                      await showOkCancelAlertDialog(
                    context: context,
                    title: place.name,
                    message: "Learn more info about ${place.name} ?",
                    okLabel: "Open",
                    cancelLabel: "Dismiss",
                  );
                  if (openLinkRequest == OkCancelResult.cancel) {
                    return; //Guarding
                  }

                  //

                  if (link == null) return;
                  html.window.open(link, "_blank");
                },
                // onLinkTapped: (String? link) {
                //   if (link == null) return;
                //   html.window.open(link, "_blank");
                // },
              );
            }));
  }
}
