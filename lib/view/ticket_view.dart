import 'package:flight_booking_app/controller/ticket_controller.dart';
import 'package:flight_booking_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketView extends StatefulWidget {
  const TicketView({super.key});

  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TicketController>(builder: (controller) {
      return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.appbarColor,
          title: Text(
            'Ezy Travel',
            style: GoogleFonts.metrophobic(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.appbartexttileColor,
              height: 1.56,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      );
    });
  }
}
