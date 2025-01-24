import 'package:flight_booking_app/controller/ticket_controller.dart';
import 'package:flight_booking_app/utils/app_colors.dart';
import 'package:flight_booking_app/view/widgets/Flight_Details_Card.dart';
import 'package:flight_booking_app/view/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketsWidgets extends StatelessWidget {
  final TicketController controller;

  const TicketsWidgets({super.key, required this.controller});



  @override
  Widget build(BuildContext context) {
    return GetBuilder<TicketController>(builder: (controller) {
      return Expanded(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return FlightDetailsCard(
              departureTime: '14:35',
              departureLocation: 'BLR - Bengaluru',
              arrivalTime: '21:55',
              arrivalLocation: 'DXB - Dubai',
              duration: '4h 30m',
              stops: '2 stops',
              price: 'AED 409',
              onwardFlight: 'BLR - Bengaluru to DXB - Dubai',
              returnFlight: 'Return - Garuda Indonesia',
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          itemCount: 10,
        ),
      );
    });
  }
}
