import 'package:flight_booking_app/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppPages with WidgetsBindingObserver {
  AppPages._();
  static const INITIAL = '/';
  static final routes = [
    GetPage(
      name: '/',
      page: () => const HomeView(),
    ),
  ];
}
