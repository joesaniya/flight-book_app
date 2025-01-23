import 'package:flight_booking_app/controller/home_controller.dart';
import 'package:flight_booking_app/view/widgets/inspiration_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class InspirationListWidget extends StatelessWidget {
  final HomeController controller;
  const InspirationListWidget({
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Travel Inspirations',
                  style: GoogleFonts.metrophobic(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 16 / 16,
                    decoration: TextDecoration.none,
                    textBaseline: TextBaseline.alphabetic,
                  ),
                  textAlign: TextAlign.left,
                ),
                Expanded(child: Container()),
                Expanded(
                  child: Container(
                    child: DropdownButton<String>(
                      value: controller.selectedDestination,
                      onChanged: (String? newValue) {
                        controller.setSelectedDestination(newValue!);
                      },
                      items: controller.destination.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: GoogleFonts.metrophobic(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              height: 1.0,
                              letterSpacing: 0.1,
                            ),
                          ),
                        );
                      }).toList(),
                      underline: Container(
                        height: 1,
                        color: Colors.black,
                      ),
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.green,
                      ),
                      isExpanded: true,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.28,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: controller.inspirationList.length,
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemBuilder: (context, index) {
                  final inspiration = controller.inspirationList[index];
                  return InspirationCard(
                    image: inspiration.image,
                    title: inspiration.title,
                    subText1: inspiration.subText1,
                    subText2: inspiration.subText2,
                  );
                },
              ),
            )
          ],
        ),
      );
    });
  }
}
