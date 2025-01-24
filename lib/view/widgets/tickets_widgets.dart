import 'package:flight_booking_app/controller/ticket_controller.dart';
import 'package:flight_booking_app/utils/app_colors.dart';
import 'package:flight_booking_app/view/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketsWidgets extends StatelessWidget {
  final TicketController controller;

  const TicketsWidgets({super.key, required this.controller});

  Widget customDottedLine(Color color) => Row(
        children: List.generate(
            300 ~/ 10,
            (index) => Expanded(
                  child: Container(
                    color: index % 2 == 0 ? Colors.transparent : color,
                    height: 2,
                  ),
                )),
      );

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
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    // Onward details
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/onward.png'),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.04,
                                  ),
                                  Text(
                                    'BLR - Bengaluru to DXB - Dubai',
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
                                'AED 409',
                                style: GoogleFonts.metrophobic(
                                  color: Colors.green,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  height: 1,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          // Flight details
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Departure
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '14:35',
                                      style: GoogleFonts.metrophobic(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      'BLR - Bengaluru',
                                      style: GoogleFonts.metrophobic(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Dash
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: Stack(
                                  children: [
                                    Center(
                                      child: customDottedLine(Colors.black38),
                                    ),
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

                              // Arrival
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '21:55',
                                      style: GoogleFonts.metrophobic(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      'DXB - Dubai',
                                      style: GoogleFonts.metrophobic(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // duration
                          Text(
                            '4h 30m',
                            style: GoogleFonts.metrophobic(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '2 stops',
                            style: GoogleFonts.metrophobic(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Divider(
                      color: Colors.grey,
                    ),
                    //return details
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/onward.png'),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.04,
                                  ),
                                  Text(
                                    'Return - Garuda Indonesia',
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
                                'AED 359',
                                style: GoogleFonts.metrophobic(
                                  color: Colors.green,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  height: 1,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          // Flight details
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '21:55',
                                      style: GoogleFonts.metrophobic(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      'DXB - Dubai',
                                      style: GoogleFonts.metrophobic(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Dash
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: Stack(
                                  children: [
                                    Center(
                                      child: customDottedLine(Colors.black38),
                                    ),
                                    const Center(
                                      child: RotatedBox(
                                        quarterTurns: 1,
                                        child: Icon(
                                          Icons.flight,
                                          size: 35,
                                          // color: Color.fromRGBO(23, 48, 86, 1),
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // Arrival
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '14:35',
                                      style: GoogleFonts.metrophobic(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      'BLR - Bengaluru',
                                      style: GoogleFonts.metrophobic(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // duration
                          Text(
                            '4h 30m',
                            style: GoogleFonts.metrophobic(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 8, top: 10, bottom: 10),
                      child: customDottedLine(Colors.grey),
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
                    )
                  ],
                ),
              ),
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
