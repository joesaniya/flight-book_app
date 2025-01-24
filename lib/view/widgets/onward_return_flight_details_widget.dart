import 'package:flight_booking_app/view/widgets/custom_dotted_line.dart';
import 'package:flight_booking_app/view/widgets/flight_detail_row.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlightDetails extends StatelessWidget {
  final String flightName;
  final String price;
  final String departureTime;
  final String departureLocation;
  final String arrivalTime;
  final String arrivalLocation;
  final String duration;
  final String? stops;

  const FlightDetails(
      {Key? key,
      required this.flightName,
      required this.price,
      required this.departureTime,
      required this.departureLocation,
      required this.arrivalTime,
      required this.arrivalLocation,
      required this.duration,
      this.stops})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: [
              Row(
                children: [
                  Image.asset('assets/images/onward.png'),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                  Text(
                    flightName,
                    style: GoogleFonts.metrophobic(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                price,
                style: GoogleFonts.metrophobic(
                  color: Colors.green,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  height: 1,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: FlightDetailRow(
                    time: departureTime, location: departureLocation)),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.45,
              child: Stack(
                children: [
                  Center(child: CustomDottedLine(color: Colors.black38)),
                  const Center(
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: Icon(
                        Icons.flight,
                        size: 35,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: FlightDetailRow(
                    time: arrivalTime, location: arrivalLocation)),
          ],
        ),
        Text(
          duration,
          style: GoogleFonts.metrophobic(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          stops ?? '',
          style: GoogleFonts.metrophobic(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
