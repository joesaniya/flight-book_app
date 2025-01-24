import 'package:flight_booking_app/controller/ticket_controller.dart';
import 'package:flight_booking_app/utils/app_colors.dart';
import 'package:flight_booking_app/view/widgets/tickets_widgets.dart';
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Card(
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
                      Text(
                        'BLR - Bengaluru to DXB - Dubai',
                        style: GoogleFonts.metrophobic(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          height: 1,
                          decorationStyle: TextDecorationStyle.solid,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text(
                        'Departure: Sat, 23 Mar - Return: Sat, 23 Mar',
                        style: GoogleFonts.metrophobic(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          height: 1,
                          decorationStyle: TextDecorationStyle.solid,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '(Round Trip)',
                            style: GoogleFonts.metrophobic(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              height: 1,
                              color: AppColors.orangeColor,
                              decorationStyle: TextDecorationStyle.solid,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04,
                          ),
                          Text(
                            'Modify Search',
                            style: GoogleFonts.metrophobic(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                height: 1,
                                color: AppColors.statusbarColor,
                                decorationStyle: TextDecorationStyle.solid,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  'Sort',
                                  style: GoogleFonts.metrophobic(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      height: 1,
                                      color: AppColors.text_Color),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: AppColors.textColor,
                                )
                              ],
                            ),
                          ),
                          Text(
                            'Non - Stop',
                            style: GoogleFonts.metrophobic(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                height: 1,
                                color: AppColors.text_Color),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  'Filter',
                                  style: GoogleFonts.metrophobic(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      height: 1,
                                      color: AppColors.text_Color),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                                Image.asset('assets/icons/filter_icon.png')
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            //2
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.travelOptions.length,
                  separatorBuilder: (context, index) =>
                      SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                  itemBuilder: (context, index) {
                    final option = controller.travelOptions[index];
                    return GestureDetector(
                      onTap: () => controller.selectOption(index),
                      child: Container(
                        width: 160,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: controller.selectedIndex.value == index
                                ? Colors.green
                                : Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              option.dateRange,
                              style: GoogleFonts.metrophobic(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  height: 1,
                                  color: AppColors.text_Color),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01),
                            Text(
                              option.price,
                              style: GoogleFonts.metrophobic(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  height: 1,
                                  color: AppColors.text_Color),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),

            //3
            Text(
              '851 Flight Found',
              style: GoogleFonts.metrophobic(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  height: 1,
                  color: AppColors.text_Color),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),

            //tickets
            TicketsWidgets(controller: controller)
          ]),
        ),
      );
    });
  }
}
