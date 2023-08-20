// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ContainerImageGojek extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String desc;
  const ContainerImageGojek(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.desc})
      : super(key: key);

  @override
  State<ContainerImageGojek> createState() => _ContainerImageGojekState();
}

class _ContainerImageGojekState extends State<ContainerImageGojek> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 240.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(
                8.0,
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero),
              child: Image.network(
                widget.imageUrl,
                width: MediaQuery.of(context).size.width,
                height: 140,
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      widget.desc,
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
