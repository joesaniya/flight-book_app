import 'package:flight_booking_app/utils/app_colors.dart';
import 'package:flight_booking_app/view/widgets/custom_dotted_line.dart';
import 'package:flight_booking_app/view/widgets/custom_outlined_button.dart';
import 'package:flight_booking_app/view/widgets/onward_return_flight_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlightDetailsCard extends StatelessWidget {
  final String departureTime;
  final String departureLocation;
  final String arrivalTime;
  final String arrivalLocation;
  final String duration;
  final String stops;
  final String price;
  final String onwardFlight;
  final String returnFlight;

  const FlightDetailsCard({
    Key? key,
    required this.departureTime,
    required this.departureLocation,
    required this.arrivalTime,
    required this.arrivalLocation,
    required this.duration,
    required this.stops,
    required this.price,
    required this.onwardFlight,
    required this.returnFlight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            // Onward Flight Details
            FlightDetails(
              flightName: onwardFlight,
              price: price,
              departureTime: departureTime,
              departureLocation: departureLocation,
              arrivalTime: arrivalTime,
              arrivalLocation: arrivalLocation,
              duration: duration,
              stops: stops,
            ),
            Divider(color: Colors.grey),
            // Return Flight Details
            FlightDetails(
              flightName: returnFlight,
              price: 'AED 359',
              departureTime: '21:55',
              departureLocation: 'DXB - Dubai',
              arrivalTime: '14:35',
              arrivalLocation: 'BLR - Bengaluru',
              duration: duration,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomDottedLine(color: Colors.grey),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        CustomOutlinedButton(
                          label: 'Cheapest',
                          borderColor: Colors.green,
                          textColor: Colors.green,
                          onPressed: () {},
                        ),
                        const SizedBox(width: 20),
                        CustomOutlinedButton(
                          label: 'Refundable',
                          borderColor: Colors.blue,
                          textColor: Colors.blue,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          'Flight Details',
                          style: GoogleFonts.metrophobic(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            height: 1,
                            color: AppColors.orangeColor,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.orangeColor,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
