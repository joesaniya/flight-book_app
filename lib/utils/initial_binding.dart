import 'package:flight_booking_app/controller/home_controller.dart';
import 'package:flight_booking_app/controller/ticket_controller.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    Get.put(TicketController());
  }
}
