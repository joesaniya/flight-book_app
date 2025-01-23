import 'package:flight_booking_app/controller/home_controller.dart';
import 'package:flight_booking_app/utils/app_colors.dart';
import 'package:flight_booking_app/view/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.appbarColor,
          title: Text(
            'Search Flights',
            style: GoogleFonts.metrophobic(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.appbartexttileColor,
              height: 1.56,
              decoration: TextDecoration.none,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: AppColors.appbartexttileColor,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.menu,
                color: AppColors.appbartexttileColor,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.24,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/boat_sea.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    top: 10,
                    child: Text(
                      'Let\'s start your trip',
                      style: GoogleFonts.metrophobic(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        height: 1.56,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.16,
                    left: 10,
                    right: 10,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(0, -2),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildOption('Round Trip', controller, context),
                          buildOption('One Way', controller, context),
                          buildOption('Multi-city', controller, context),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // 2
            Container(
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 12),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomTextField(
                          hintText: "From",
                          imagePath: 'assets/icons/departure_icon.png',
                          controller: controller.fromController,
                        ),
                        Container(
                          height: 2,
                          width: MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.green,
                                Colors.green.withOpacity(0.1),
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                        ),
                        CustomTextField(
                          hintText: "To",
                          imagePath: 'assets/icons/location1.png',
                          controller: controller.toController,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 50,
                    right: 20,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffECF2E7)),
                      child:
                          Center(child: Image.asset('assets/icons/swap.png')),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),

            //3
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            color: Colors.transparent,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  top: 10,
                                  left: 10,
                                  right: 10,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 10),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: TextFormField(
                                      controller: controller.dateController,
                                      readOnly: true,
                                      onTap: () => controller.pickDate(context),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        isDense: true,
                                        suffixIcon: IconButton(
                                          icon: Icon(Icons.calendar_today,
                                              color: Colors.grey),
                                          onPressed: () =>
                                              controller.pickDate(context),
                                        ),
                                      ),
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 20,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xffECF2E7),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    padding: EdgeInsets.all(4),
                                    child: Text(
                                      'Departure',
                                      style: GoogleFonts.metrophobic(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        height: 1.0,
                                        decoration: TextDecoration.none,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            color: Colors.transparent,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  top: 10,
                                  left: 10,
                                  right: 10,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 10),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: TextFormField(
                                      controller: controller.returnController,
                                      readOnly: true,
                                      onTap: () => controller.pickDate(context),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        isDense: true,
                                        suffixIcon: IconButton(
                                          icon: Icon(Icons.calendar_today,
                                              color: Colors.grey),
                                          onPressed: () =>
                                              controller.pickDate(context),
                                        ),
                                      ),
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 20,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xffECF2E7),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    padding: EdgeInsets.all(4),
                                    child: Text(
                                      'return',
                                      style: GoogleFonts.metrophobic(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        height: 1.0,
                                        decoration: TextDecoration.none,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            color: Colors.transparent,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  top: 10,
                                  left: 10,
                                  right: 10,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 10),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: TextFormField(
                                      controller:
                                          controller.travelersController,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        isDense: true,
                                      ),
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 20,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xffECF2E7),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                      ),
                                      padding: EdgeInsets.all(4),
                                      child: Text(
                                        'Travelers',
                                        style: GoogleFonts.metrophobic(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          height: 1.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.black,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            color: Colors.transparent,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  top: 10,
                                  left: 10,
                                  right: 10,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 10),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: TextFormField(
                                      controller:
                                          controller.cabinclassController,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        isDense: true,
                                      ),
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 20,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xffECF2E7),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    padding: EdgeInsets.all(4),
                                    child: Text(
                                      'Cabin Class',
                                      style: GoogleFonts.metrophobic(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        height: 1.0,
                                        decoration: TextDecoration.none,
                                        color: Colors.black,
                                      ),
                                    ),
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
      );
    });
  }

  Widget buildOption(
      String text, HomeController controller, BuildContext context) {
    bool isSelected = controller.selectedTrip == text;
    return GestureDetector(
      onTap: () {
        controller.setSelectedTrip(text);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height * 0.06,
        decoration: BoxDecoration(
          color: isSelected ? Colors.green : Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.metrophobic(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
