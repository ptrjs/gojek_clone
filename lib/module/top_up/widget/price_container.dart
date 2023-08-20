// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class PriceContainer extends StatefulWidget {
  final String iconUrl;
  final String title;
  const PriceContainer({
    Key? key,
    required this.iconUrl,
    required this.title,
  }) : super(key: key);

  @override
  State<PriceContainer> createState() => _PriceContainerState();
}

class _PriceContainerState extends State<PriceContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              widget.iconUrl,
              width: 40.0,
              height: 40.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 4.0,
            ),
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
