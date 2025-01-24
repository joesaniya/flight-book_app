import 'package:flight_booking_app/controller/ticket_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_dash/flutter_dash.dart';

class TicketsWidgets extends StatelessWidget {
  final TicketController controller;

  const TicketsWidgets({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TicketController>(builder: (controller) {
      return Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        //onward
                        Container(
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Image.asset(
                                              'assets/images/onward.png'),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.04,
                                          ),
                                          Text(
                                            'BLR - Bengaluru to DXB - Dubai',
                                            style: GoogleFonts.metrophobic(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              height: 1,
                                              decorationStyle:
                                                  TextDecorationStyle.solid,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      'AED 409',
                                      style: GoogleFonts.metrophobic(
                                        color: Colors.green,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        height: 1,
                                        decorationStyle:
                                            TextDecorationStyle.solid,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              //dotted
                              Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Text(
                                              '14:35',
                                              style: GoogleFonts.metrophobic(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700,
                                                height: 1,
                                                decorationStyle:
                                                    TextDecorationStyle.solid,
                                              ),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.01,
                                            ),
                                            Text(
                                              'BLR - Bengaluru',
                                              style: GoogleFonts.metrophobic(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                height: 1,
                                                decorationStyle:
                                                    TextDecorationStyle.solid,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Column(
                                          children: [
                                            /*Expanded(
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Dash(
                                                      direction:
                                                          Axis.horizontal,
                                                      dashLength: 8,
                                                      dashColor: Colors.grey,
                                                      dashGap: 4,
                                                      dashThickness: 2,
                                                    ),
                                                    Dash(
                                                      direction:
                                                          Axis.horizontal,
                                                      dashLength: 8,
                                                      dashColor: Colors.grey,
                                                      dashGap: 4,
                                                      dashThickness: 2,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),*/
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.01,
                                            ),
                                            Text(
                                              '4h 30m',
                                              style: GoogleFonts.metrophobic(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                height: 1,
                                                decorationStyle:
                                                    TextDecorationStyle.solid,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Text(
                                              '21:55',
                                              style: GoogleFonts.metrophobic(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700,
                                                height: 1,
                                                decorationStyle:
                                                    TextDecorationStyle.solid,
                                              ),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.01,
                                            ),
                                            Text(
                                              'DXB - Dubai',
                                              style: GoogleFonts.metrophobic(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                height: 1,
                                                decorationStyle:
                                                    TextDecorationStyle.solid,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) =>
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              itemCount: 10));
    });
  }
}
