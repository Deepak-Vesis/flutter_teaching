import 'package:calculator/learn_getx/quiz_test/quiz_screen_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizScreenPage extends StatelessWidget {
  const QuizScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(QuizScreenPageController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Java"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Question 1/10"),
                // Obx(() => Text("Timer ${controller.count.value} min"),)
                GetBuilder(
                  init: QuizScreenPageController(),
                  builder: (controller) {
                    return Text("Timer ${controller.count_G} min");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
