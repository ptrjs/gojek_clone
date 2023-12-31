
import 'package:flutter/material.dart';
import 'package:gojek_clone/core.dart';
import '../controller/promo_controller.dart';

class PromoView extends StatefulWidget {
    const PromoView({Key? key}) : super(key: key);

    Widget build(context, PromoController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("Promo"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: const Column(
            children: [],
            ),
        ),
        ),
    );
    }

    @override
    State<PromoView> createState() => PromoController();
}
    