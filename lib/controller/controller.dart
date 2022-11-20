import 'package:get/get.dart';

class Controller extends GetxController {
  RxString text = "Available".obs;

   textChanged() {
    if (text == "Currently Working") {
      text = "Available".obs;
    } else {
      text = "Currently Working".obs;
    }
  }
}
