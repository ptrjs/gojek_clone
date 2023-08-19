import 'package:flutter/material.dart';
import 'package:gojek_clone/core.dart';
import 'package:gojek_clone/module/top_up/view/instant_view.dart';
import 'package:gojek_clone/module/top_up/view/other_method_view.dart';
import 'package:gojek_clone/shared/theme/theme_config.dart';

import '../controller/top_up_controller.dart';

class TopUpView extends StatefulWidget {
  const TopUpView({Key? key}) : super(key: key);

  Widget build(context, TopUpController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            indicatorColor: primaryColor,
            tabs: [
              Tab(
                text: "Instant",
              ),
              Tab(
                text: "Other Method",
              ),
            ],
          ),
          title: const Text(
            'Top Up',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            InstantView(),
            OtherMethodView(),
          ],
        ),
      ),
    );
  }

  @override
  State<TopUpView> createState() => TopUpController();
}
