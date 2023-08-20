// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:gojek_clone/module/top_up/widget/instant_carousel.dart';
import 'package:gojek_clone/module/top_up/widget/price_container.dart';

class InstantView extends StatelessWidget {
  const InstantView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InstantCarousel(),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      "Choose Nominal",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 12.0,
                        ),
                        Wrap(
                          children: [
                            PriceContainer(
                                iconUrl:
                                    "https://cdn-icons-png.flaticon.com/128/9245/9245443.png",
                                title: "Rp19.000"),
                            PriceContainer(
                                iconUrl:
                                    "https://cdn-icons-png.flaticon.com/128/3135/3135706.png",
                                title: "Rp49.000"),
                            PriceContainer(
                                iconUrl:
                                    "https://cdn-icons-png.flaticon.com/128/639/639365.png",
                                title: "Rp99.000"),
                            PriceContainer(
                                iconUrl:
                                    "https://cdn-icons-png.flaticon.com/128/10384/10384161.png",
                                title: "Rp199.000"),
                            PriceContainer(
                                iconUrl:
                                    "https://cdn-icons-png.flaticon.com/128/2953/2953423.png",
                                title: "Rp299.000"),
                            PriceContainer(
                                iconUrl:
                                    "https://cdn-icons-png.flaticon.com/128/2108/2108625.png",
                                title: "Rp499.000"),
                          ],
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                20.0,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.add,
                                size: 24.0,
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                "add the custome nominal",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    20.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
