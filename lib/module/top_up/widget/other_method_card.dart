// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../../shared/theme/theme_config.dart';

class OtherMethodCard extends StatefulWidget {
  final String iconUrl;
  final String title;
  final String desc;
  const OtherMethodCard({
    Key? key,
    required this.iconUrl,
    required this.title,
    required this.desc,
  }) : super(key: key);

  @override
  State<OtherMethodCard> createState() => _OtherMethodCardState();
}

class _OtherMethodCardState extends State<OtherMethodCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: primaryColor,
          backgroundImage: NetworkImage(
            widget.iconUrl,
          ),
        ),
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          widget.desc,
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.chevron_right,
            size: 24.0,
          ),
        ),
      ),
    );
  }
}
