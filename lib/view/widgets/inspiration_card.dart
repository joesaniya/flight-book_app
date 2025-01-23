import 'package:flight_booking_app/modal/inspiration.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InspirationCard extends StatelessWidget {
  final String image;
  final String title;
  final String subText1;
  final String subText2;
  const InspirationCard({
    Key? key,
    required this.image,
    required this.title,
    required this.subText1,
    required this.subText2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 20,
            left: 20,
            child: Text(
              title,
              style: GoogleFonts.metrophobic(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                height: 20 / 20,
                decoration: TextDecoration.none,
                decorationThickness: 2.0,
              ),
            ),
          ),
          Positioned(
              bottom: 40,
              left: 20,
              child: Text(
                subText2,
                style: GoogleFonts.metrophobic(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  height: 12 / 12,
                  decoration: TextDecoration.none,
                  decorationThickness: 2.0,
                ),
              )),
          Positioned(
              bottom: 60,
              left: 20,
              child: Text(
                subText1,
                style: GoogleFonts.metrophobic(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  height: 12 / 12,
                  decoration: TextDecoration.none,
                  decorationThickness: 2.0,
                ),
              ))
        ],
      ),
    );
  }
}
