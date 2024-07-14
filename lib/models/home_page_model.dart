import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

class HomePageModel {
  late CarouselController carouselController;
  late int carouselCurrentIndex;
  final unfocusNode = FocusNode();

  HomePageModel() {
    carouselController = CarouselController();
    carouselCurrentIndex = 0;
  }

  void dispose() {
    unfocusNode.dispose();
  }
}
