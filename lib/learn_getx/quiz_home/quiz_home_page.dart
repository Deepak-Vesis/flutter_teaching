import 'package:calculator/learn_getx/models/info_model.dart';
import 'package:calculator/learn_getx/models/subject_model.dart';
import 'package:calculator/learn_getx/quiz_home/quiz_home_page_controller.dart';
import 'package:calculator/learn_getx/quiz_test/QuizScreenPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizHomePage extends StatelessWidget {
  const QuizHomePage({super.key});



  @override
  Widget build(BuildContext context) {
    var controller = Get.put(QuizHomePageController());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text.rich(
          TextSpan(
            text: 'Quiz', // Base text for the TextSpan
            style: TextStyle(fontSize: 20, color: Colors.white), // Base style
            children: <TextSpan>[
              TextSpan(
                text: 'Zone', // Child TextSpan
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                ), // Overrides base style
              ),
            ],
          ),
        ),
        leading: Icon(Icons.menu, color: Colors.white, size: 30),
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.indigo], // Define the colors
            begin: Alignment.topCenter, // Starting point of the gradient
            end: Alignment.bottomCenter, // Ending point of the gradient
            // Optional: control color distribution
          ),
        ),
        child: ListView(
          children: [
            SizedBox(height: 40),
            Text(
              "Hi, Students",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            SizedBox(height: 10),
            Text(
              "Check your knowledge",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 20),
            statusBox(statusInfo: controller.statusInfo),
            SizedBox(height: 20),
            Text(
              "Select Category",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 20,
              runSpacing: 20,
              children: List.generate(controller.subList.length, (index) {
                var item = controller.subList[index];
                return subjectBox(item);
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget subjectBox(SubjectModel item) => InkWell(
    onTap: () {
      Get.to(() => QuizScreenPage(), arguments: {"subject": item.subName});
    },
    child: Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.indigo.withValues(alpha: .2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //TODO:Image
          Text(item.subName, style: TextStyle(color: Colors.white)),
        ],
      ),
    ),
  );

  statusBox({required List<InfoModel> statusInfo}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      margin: EdgeInsets.all(40),
      decoration: BoxDecoration(
        color: Colors.indigo.withValues(alpha: .2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomLeft: Radius.circular(12),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          _dataInfo(statusInfo, 0),
          _divider(),
          _dataInfo(statusInfo, 1),
          _divider(),
          _dataInfo(statusInfo, 2),
        ],
      ),
    );
  }

  Widget _dataInfo(List<InfoModel> list, int index) {
    return Column(
      children: [
        Text(list[index].name, style: TextStyle(color: Colors.white)),
        SizedBox(height: 10),
        Text(list[index].data, style: TextStyle(color: Colors.white)),
      ],
    );
  }

  Widget _divider() => Container(width: 1, height: 20, color: Colors.white);
}
