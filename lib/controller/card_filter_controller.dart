import 'package:get/get.dart';

class CardFilterController extends GetxController {
  var check = false.obs;
   void toggleCheck() {
    check.toggle();
  }
}
