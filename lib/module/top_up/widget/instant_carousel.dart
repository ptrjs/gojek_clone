// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../shared/theme/theme_config.dart';

class InstantCarousel extends StatefulWidget {
  const InstantCarousel({Key? key}) : super(key: key);

  @override
  State<InstantCarousel> createState() => _InstantCarouselState();
}

class _InstantCarouselState extends State<InstantCarousel> {
  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return /*
    TODO: Implement this @ controller
    int currentIndex = 0;
    final CarouselController carouselController = CarouselController();
    */
        Builder(builder: (context) {
      List<Map<String, String>> items = [
        {
          "iconUrl": "https://cdn-icons-png.flaticon.com/128/3919/3919722.png",
          "title": "Free top up with Jago anytime",
          "color": Colors.orange.value.toRadixString(16),
        },
        {
          "iconUrl":
              "https://cdn-icons-png.flaticon.com/128/11272/11272927.png",
          "title":
              "Like visiting Indomaret? now you can top up GoPay in Indomaret.",
          "color": primaryColor.value.toRadixString(16),
        },
        // Tambahkan item sesuai kebutuhan
      ];

      return Column(
        children: [
          CarouselSlider(
            carouselController: carouselController,
            options: CarouselOptions(
              height: 80.0,
              autoPlay: false,
              viewportFraction: 0.9,
              enlargeCenterPage: false,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                currentIndex = index;
                setState(() {});
              },
            ),
            items: items.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                    child: Card(
                      color: Color(int.parse(item["color"]!, radix: 16)),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(8.0),
                        leading: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage(
                            item["iconUrl"]!,
                          ),
                        ),
                        title: Text(
                          item["title"]!,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.chevron_right,
                            size: 24.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: items.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => carouselController.animateToPage(entry.key),
                child: Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.light
                              ? primaryColor
                              : Colors.white)
                          .withOpacity(currentIndex == entry.key ? 1 : 0.3)),
                ),
              );
            }).toList(),
          ),
        ],
      );
    });
  }
}
