// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../../shared/theme/theme_config.dart';

class ListTileGopayCash extends StatefulWidget {
  const ListTileGopayCash({Key? key}) : super(key: key);

  @override
  State<ListTileGopayCash> createState() => _ListTileGopayCashState();
}

class _ListTileGopayCashState extends State<ListTileGopayCash> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.monetization_on,
                        size: 14.0,
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        "gopay",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        "coins",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Text(
                    "0",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Text(
                    "Click for details",
                    style: TextStyle(fontSize: 12.0, color: primaryColor),
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
