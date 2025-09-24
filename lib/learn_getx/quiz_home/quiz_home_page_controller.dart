import 'package:calculator/learn_getx/models/question_model.dart';
import 'package:calculator/learn_getx/models/subject_model.dart';
import 'package:calculator/learn_getx/question_data.dart';
import 'package:get/get.dart';

import '../models/info_model.dart';


class QuizHomePageController extends GetxController {
  List<SubjectModel> subList = subListData;

  // JAVA Questions
  List<QuestionModel> javaQ = javaQData;

  // // C++ Questions
  // List<QuestionModel> cppQ = cppQData;
  //
  // // Dart Questions
  // List<QuestionModel> dartQ = dartQData;
  //
  // // HTML Questions
  // List<QuestionModel> htmlQ = htmlQData;
  
  List<InfoModel> statusInfo=[
    InfoModel("Rank", "42"),
    InfoModel("Level", "08"),
    InfoModel("Points", "1220"),
  ];
}
