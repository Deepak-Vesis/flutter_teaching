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

  Option(this.optionNumber, this.option);
}
