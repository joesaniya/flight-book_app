import 'package:flight_booking_app/modal/travel_option.dart';
import 'package:get/get.dart';

class TicketController extends GetxController {
  // int selectedIndex = -1;
  var selectedIndex = (-1).obs;
  final List<TravelOption> travelOptions = [
    TravelOption(dateRange: "Mar 22 - Mar 23", price: "From AED 741"),
    TravelOption(dateRange: "Mar 23 - Mar 24", price: "From AED 721"),
    TravelOption(dateRange: "Mar 24 - Mar 25", price: "From AED 750"),
    TravelOption(dateRange: "Mar 25 - Mar 26", price: "From AED 730"),
  ];
  void selectOption(int index) {
    selectedIndex.value = index;
    update();
  }
}
