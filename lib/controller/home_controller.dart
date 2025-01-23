import 'package:flight_booking_app/modal/inspiration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeController extends GetxController {
  String selectedTrip = 'One Way';
  String selectedDestination = "Dubai";
  final List<String> destination = ["Dubai", "Norway", "Swedan"];
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController returnController = TextEditingController();
  TextEditingController travelersController = TextEditingController();
  TextEditingController cabinclassController = TextEditingController();
  List<Inspiration> inspirationList = [
    Inspiration(
        image: 'assets/images/saudi_arabia.png',
        title: 'Saudi Arabia',
        subText1: 'From AED867',
        subText2: 'Economy round trip'),
    Inspiration(
        image: 'assets/images/kuwait.png',
        title: 'Kuwait',
        subText1: 'From AED867',
        subText2: 'Economy round trip'),
    Inspiration(
        image: 'assets/images/saudi_arabia.png',
        title: 'jeju island',
        subText1: 'From AED867',
        subText2: 'Economy round trip'),
    Inspiration(
        image: 'assets/images/kuwait.png',
        title: 'Goa',
        subText1: 'From AED867',
        subText2: 'Economy round trip'),
  ];

  @override
  void onInit() {
    super.onInit();

    dateController.text =
        DateFormat('EEE, dd MMM - yyyy').format(DateTime.now());
    returnController.text =
        DateFormat('EEE, dd MMM - yyyy').format(DateTime.now());
  }

  void setSelectedTrip(String trip) {
    selectedTrip = trip;
    update();
  }

  void setSelectedDestination(String destination) {
    selectedDestination = destination;
    update();
  }

  Future<void> pickDate(
      BuildContext context, TextEditingController controller) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      controller.text = DateFormat('EEE, dd MMM - yyyy').format(pickedDate);
      update();
    }
  }

  @override
  void onClose() {
    fromController.dispose();
    toController.dispose();
    dateController.dispose();
    super.onClose();
  }
}
