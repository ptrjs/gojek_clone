// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';


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
      child: const ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
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
                SizedBox(
                  height: 4.0,
                ),
                SizedBox(
                  height: 4.0,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Text(
                    "Pay with GoPay",
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                ),
                SizedBox(
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
