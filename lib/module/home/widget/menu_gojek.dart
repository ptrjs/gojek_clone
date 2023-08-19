// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MenuGojek extends StatefulWidget {
  const MenuGojek({Key? key}) : super(key: key);

  @override
  State<MenuGojek> createState() => _MenuGojekState();
}

class _MenuGojekState extends State<MenuGojek> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        List menus = [
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/8939/8939904.png",
            "label": "GoRide",
            "onTap": () {},
          },
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/3097/3097180.png",
            "label": "GoCar",
            "onTap": () {},
          },
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/9561/9561688.png",
            "label": "GoFood",
            "onTap": () {},
          },
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/1350/1350253.png",
            "label": "GoSend",
            "onTap": () {},
          },
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/4290/4290854.png",
            "label": "GoMart",
            "onTap": () {},
          },
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/1052/1052815.png",
            "label": "GoTagihan",
            "onTap": () {},
          },
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/416/416597.png",
            "label": "GoTransit",
            "onTap": () {},
          },
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/7245/7245102.png",
            "label": "Others",
            "onTap": () {},
          },
        ];

        return Wrap(
          children: List.generate(
            menus.length,
            (index) {
              var item = menus[index];

              var size = constraint.biggest.width / 4;

              return SizedBox(
                width: size,
                height: size,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.blueGrey,
                    animationDuration: const Duration(milliseconds: 1000),
                    backgroundColor: Colors.transparent,
                    splashFactory: InkSplash.splashFactory,
                    shadowColor: Colors.transparent,
                    elevation: 0.0,
                  ),
                  onPressed: () => item["onTap"](),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        item["icon"],
                        width: 30.0,
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        "${item["label"]}",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 11.0,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
