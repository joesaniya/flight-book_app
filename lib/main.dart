import 'package:flight_booking_app/utils/app_colors.dart';
import 'package:flight_booking_app/utils/initial_binding.dart';
import 'package:flight_booking_app/utils/route_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: AppColors.statusbarColor, // Set your desired color
      statusBarBrightness:
          Brightness.light, // For iOS (light icons on dark background)
      statusBarIconBrightness:
          Brightness.light, // For Android (light icons on dark background)*/
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flight Booking App',
      debugShowCheckedModeBanner: false,
      /*   theme: ThemeData(
        primaryColor: const Color(0xff1529e8),
        appBarTheme: const AppBarTheme(
          color: AppColors.appbarColor,
        ),
      ),*/
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      // themeMode: Get.find<ThemeController>().theme,
      initialBinding: InitialBinding(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
