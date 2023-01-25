class QuizQuestionModel {
  final String question;
  final String level;
  final List<String> options;
  final int correctAnswerIndex;

  QuizQuestionModel({
    required this.question,
    required this.level,
    required this.options,
    required this.correctAnswerIndex,
  });

  Map<String, dynamic> toMap() => {
        "question": this.question,
        "level": this.level,
        "options": this.options,
        "correctAnswerIndex": this.correctAnswerIndex
      };

  QuizQuestionModel.fromMap(Map<String, dynamic> map)
      : question = map["question"],
        level = map["level"],
        options = List<String>.from(map["options"]),
        correctAnswerIndex = map["correctAnswerIndex"];
}
