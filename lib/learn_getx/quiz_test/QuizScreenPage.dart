import 'package:calculator/learn_getx/models/question_model.dart';
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
                Obx(() => Text("Timer ${controller.count.value} min")),
              ],
            ),
          ),
          SizedBox(height: 10),
          Obx(
            () => Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.all(40),
              child: Center(
                child: Text(controller.currentQuestion.value.question),
              ),
            ),
          ),
          Obx(
            () => Column(
              children: List.generate(
                4,
                (index) => _buildOption(
                  controller.currentQuestion.value.options[index],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: controller.onNextClick,
            child: Text("Next"),
          ),
        ],
      ),
    );
  }

  Widget _buildOption(Option op) {
    var showColor = false.obs;
    return GestureDetector(
      onTap: () {
        showColor.value = true;
      },
      child: Obx(
        () => Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
            color:
                showColor.value==true && op.isCorrect == true ? Colors.green : Colors.transparent,
          ),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text("${op.optionNumber} | ${op.option}"),
        ),
      ),
    );
  }
}
