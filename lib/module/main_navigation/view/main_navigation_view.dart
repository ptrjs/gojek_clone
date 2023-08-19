import 'package:flutter/material.dart';
import 'package:gojek_clone/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  Widget build(context, MainNavigationController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            const HomeView(),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.purple,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          onTap: (newIndex) => controller.updateIndex(newIndex),
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.percentBox,
              ),
              label: "Promo",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.delivery_dining,
              ),
              label: "Order",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
              ),
              label: "Chat",
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
