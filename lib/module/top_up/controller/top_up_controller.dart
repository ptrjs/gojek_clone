import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:gojek_clone/core.dart';
import '../view/top_up_view.dart';

class TopUpController extends State<TopUpView> {
  static late TopUpController instance;
  late TopUpView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();
}
