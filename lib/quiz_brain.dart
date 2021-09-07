import 'package:quizzler/question.dart';

class QuizBrain {
  // creating a private data make is encapluated from other and its safe.
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(
        questionText: 'Java is Object Oriented Programming.',
        questionAnswer: true),
    Question(questionText: 'Does cow have 2 legs.', questionAnswer: false),
    Question(questionText: 'Human\'s have 2 legs.', questionAnswer: true),
    Question(questionText: 'Is Dog fly.', questionAnswer: false)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText!;
  }

  bool? getAnswervalue() {
    return _questionBank[_questionNumber].questionAnswer!;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
