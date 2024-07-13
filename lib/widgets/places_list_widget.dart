import 'package:flutter/material.dart';

import '../models/place.dart';
import 'place_card.dart';


class PlaceListWidget extends StatelessWidget {
  const PlaceListWidget({
    super.key,
    required this.places,
  });

  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          var place = places[index];
          return PlaceCardWidget(
            place: place,
            onTap: () {
              // html.window.open(
              //     "https://www.google.com/search?q=${place.name}",
              //     "_blank");
            },
          );
        });
  }
}
