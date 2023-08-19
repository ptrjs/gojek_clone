// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../../shared/theme/theme_config.dart';

class ListTileGopay extends StatefulWidget {
  const ListTileGopay({Key? key}) : super(key: key);

  @override
  State<ListTileGopay> createState() => _ListTileGopayState();
}

class _ListTileGopayState extends State<ListTileGopay> {
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
                      Text(
                        "gopay",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Text(
                    "Pay with GoPay",
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
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
