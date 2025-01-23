import 'package:flight_booking_app/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FlightHotelPackage extends StatelessWidget {
  final HomeController controller;
  const FlightHotelPackage({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Flight & Hotel Packages',
              style: GoogleFonts.metrophobic(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 16 / 16,
                decoration: TextDecoration.none,
                textBaseline: TextBaseline.alphabetic,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.28,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.80,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(
                          'assets/images/hotel_banner.png',
                        ),
                        fit: BoxFit.cover,
                      )),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemCount: 5),
            )
          ],
        ),
      );
    });
  }
}
