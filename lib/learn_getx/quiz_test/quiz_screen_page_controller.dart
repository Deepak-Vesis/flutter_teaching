import 'dart:async';

import 'package:get/get.dart';

class QuizScreenPageController extends GetxController {
  // late String model;

  // RxInt count = 10.obs;
  int count_G = 20;

  // int count = 0;
  late Timer timer;

  @override
  void onInit() {
    // var arguments = Get.arguments;
    // model = arguments["subject"];

    _setTimer();
    super.onInit();
  }

  _setTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if ( count_G == 0) timer.cancel();
      // count--;
      count_G--;
      update();
      // print(count);
      print(count_G);
    });

    Timer(Duration(seconds: 5), () {
      print("Mai amar hu");
    });
  }

  @override
  void onClose() {
    timer.cancel();
    super.onClose();
  }
}
