import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeController extends GetxController {
  String selectedTrip = 'One Way';
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController returnController = TextEditingController();
  TextEditingController travelersController = TextEditingController();
  TextEditingController cabinclassController = TextEditingController();

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

  Future<void> pickDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      dateController.text = DateFormat('EEE, dd MMM - yyyy').format(pickedDate);
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
