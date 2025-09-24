
class QuestionModel {
  String question;
  List<Option> options;
  int correct;
  String subCode;

  QuestionModel(this.question, this.options, this.correct, this.subCode);
}

class Option {
  int optionNumber;
  String option;
  bool? isCorrect;

  Option({required this.optionNumber, required this.option, this.isCorrect=false});
}
