import 'package:calculator/learn_getx/quiz_test/quiz_screen_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizScreenPage extends StatelessWidget {
  const QuizScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(QuizScreenPageController());
    return Scaffold(
      body: Column(
        children: [Text("Question"), Center(child: Text(controller.model))],
      ),
    );
  }
}
