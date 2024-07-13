import 'package:flutter/material.dart';

import '../models/place.dart';

class PlaceCardWidget extends StatelessWidget {
  const PlaceCardWidget({
    super.key,
    required this.place,
    this.onLinkTapped,
    this.onTap,
  });
  final Place place;
  final void Function(String?)? onLinkTapped;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 270,
      // color: Colors.red,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Container(
              width: 200,
              height: 120,
              margin: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(place.imageUrl!))),
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              // color: Colors.indigo,
              height: 120,
              width: 200,
              child: Padding(
                padding: const EdgeInsets.only(left: 6, right: 6, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      place.name ?? "Place Title",
                      style: Theme.of(context).textTheme.labelLarge
                      // ?.copyWith(color: Colors.indigo)
                      ,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      // "rinting and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when",
                      place.description ?? "Place description",
                      maxLines: 2,
                      style: TextStyle(color: Colors.grey[400], fontSize: 8),
                      // style: Theme.of(context).textTheme.labelLarge
                      // ?.copyWith(color: Colors.indigo)
                    ),

                    // ElevatedButton(
                    //     onPressed: () {}, child: const Text("Get Info")),
                    const Spacer(),
                    InkWell(
                      onTap: onTap ?? () => onLinkTapped?.call(place.weblink),
                      // onTap: onTap,
                      // onTap: () {
                      //   var shadow = onTap;
                      //   if (shadow == null) return;
                      //   shadow();
                      // },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: const LinearGradient(
                                colors: [
                                  Color.fromRGBO(75, 119, 224, 1),
                                  Color.fromRGBO(134, 159, 220, 1),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight)),
                        child: const Row(
                          // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Get Info",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
