import 'package:carousel_slider/carousel_slider.dart';
import 'package:gojek_clone/module/home/widget/carousel_gojek.dart';
import 'package:gojek_clone/module/home/widget/container_image_gojek.dart';
import 'package:gojek_clone/module/home/widget/listtile_gopay.dart';
import 'package:gojek_clone/module/home/widget/listtile_gopay_cash.dart';
import 'package:gojek_clone/module/home/widget/menu_gojek.dart';
import 'package:gojek_clone/shared/theme/theme_config.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:gojek_clone/core.dart';
import '../controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;

    final ScrollController scrollController = ScrollController();

    double getScrollOffset() {
      return scrollController.offset;
    }

    return Scaffold(
      appBar: AppBar(
        actions: [
          Flexible(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 8.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  border: Border.all(
                    width: 1.0,
                    color: Colors.white,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(0),
                      child: Icon(
                        Icons.search,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        initialValue: null,
                        decoration: const InputDecoration.collapsed(
                          filled: true,
                          fillColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          hintText: "Search services, foods, & destinations",
                        ),
                        onFieldSubmitted: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
              child: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Icon(
                  MdiIcons.account,
                  size: 24.0,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Row(
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.center,
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       Container(
                      //         height: 15,
                      //         width: 5,
                      //         decoration: BoxDecoration(
                      //             borderRadius: BorderRadius.all(
                      //               Radius.circular(12.0),
                      //             ),

                      //             shape: BoxShape.rectangle),
                      //       ),
                      //       const SizedBox(
                      //         height: 4.0,
                      //       ),
                      //       Container(
                      //         height: 15,
                      //         width: 5,
                      //         decoration: BoxDecoration(
                      //             borderRadius: BorderRadius.all(
                      //               Radius.circular(12.0),
                      //             ),
                      //             shape: BoxShape.rectangle),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 150,
                          child: ListView.builder(
                            controller: ScrollController(),
                            scrollDirection: Axis.vertical,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              controller.setScrollOffset(index);
                              if (index == 0) {
                                return ListTileGopayCash();
                              } else if (index == 1) {
                                return Container(
                                  height: 10,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                  ),
                                );
                              } else if (index == 2) {
                                return ListTileGopay();
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.payment,
                                size: 24.0,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Pay",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add_box,
                                size: 24.0,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Top Up",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.rocket_launch,
                                size: 24.0,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Explore",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            MenuGojek(),
            ContainerImageGojek(
              imageUrl:
                  "https://media.istockphoto.com/id/1287632111/photo/weve-got-you-covered-during-lockdown.webp?b=1&s=170667a&w=0&k=20&c=0Tze_P5Sb1nup5F-XFi3qgDqilYz2EzaUE_qZexcJkg=",
              title: "Ready for win the prize?",
              desc:
                  "Always order Gojek for win the chance to get car & many more. Check the information!",
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.monetization_on,
                        size: 18.0,
                        color: secondaryColor,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        "gopay",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "Payouts can cashback everywhere??",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "Only Rp 1! Buy a Cashback Package, pay QRIS or not all out! Check it now!",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),

            //con image
            CarouselGojek(),
            const SizedBox(
              height: 8.0,
            ),
            ContainerImageGojek(
                imageUrl:
                    "https://media.istockphoto.com/id/1182778655/id/foto/pengantar-barang-memegang-kotak-parsel-dan-membunyikan-bel-pintu-di-pintu-klien-di-latar.jpg?s=612x612&w=0&k=20&c=1B3h2bBD5bOP53Fr3hkAYhefZpjTb7Q4Ly5pNYNIYmA=",
                title: "Discount if ride GoCar",
                desc:
                    "Only for you who want comfortable ride but cost less. Click!")
          ],
        ),
      ),
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
