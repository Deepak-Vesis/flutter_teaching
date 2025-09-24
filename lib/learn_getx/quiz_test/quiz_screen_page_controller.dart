import 'dart:async';

import 'package:get/get.dart';

import '../question_data.dart';

class QuizScreenPageController extends GetxController {
  RxInt count = 20.obs;

  int curIdx = 0;
  var questionData = javaQData;
  var currentQuestion = javaQData[0].obs;

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
      if (count.value == 1) timer.cancel();
      // count--;
      count--;
      update();
      // print(count);
      // print(count);
    });

    Timer(Duration(seconds: 20), () {
      print("Mai amar hu");
    });
  }

  onNextClick() {
    print("I'm call");
    if (curIdx < questionData.length) {
      currentQuestion.value = javaQData[curIdx++];
    }
  }

  @override
  void onClose() {
    timer.cancel();
    super.onClose();
  }
}
