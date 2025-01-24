import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlightDetailRow extends StatelessWidget {
  final String time;
  final String location;

  const FlightDetailRow({
    Key? key,
    required this.time,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          time,
          style: GoogleFonts.metrophobic(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          location,
          style: GoogleFonts.metrophobic(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
