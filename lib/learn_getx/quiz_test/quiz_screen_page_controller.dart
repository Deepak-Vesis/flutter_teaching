import 'package:get/get.dart';

class QuizScreenPageController extends GetxController {
  late String model;

  @override
  void onInit() {
    var arguments = Get.arguments;
    model = arguments["subject"];
    super.onInit();
  }
}
