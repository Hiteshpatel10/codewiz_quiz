class QuizQuestionModel {
  final String question;
  final String level;
  final List<String> options;
  final int correctAnswerIndex;
  var choiceSelcted = -1;
  final String explanation;

  QuizQuestionModel({
    required this.question,
    required this.level,
    required this.options,
    required this.explanation,
    required this.correctAnswerIndex,
  });

  QuizQuestionModel.fromMap(Map<String, dynamic> map)
      : question = map["question"],
        level = map["level"],
        options = List<String>.from(map["options"]),
        correctAnswerIndex = map["correctAnswerIndex"],
        explanation = map['explanation'];
}
