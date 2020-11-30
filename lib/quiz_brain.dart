import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
      q: 'You can lead a cow down stairs but not up stairs.',
      a: false,
    ),
    Question(
      q: 'Approximately one quarter of human bones are in the feet.',
      a: true,
    ),
    Question(
      q: 'A slug\'s blood is green.',
      a: true,
    ),
    Question(
      q: 'In the 2020 election, there was evidence of voter fraud in Pennsylvania, Michigan, Wisconsin, Georgia, and Nevada.',
      a: true,
    ),
    Question(
      q: 'Flutter utilizes the Dart programming language to produce cross-platform apps from a single codebase.',
      a: true,
    ),
    Question(
      q: 'Catholics are christians.',
      a: true,
    ),
    Question(
      q: 'Nada Surf is a band originating from the Phillipines.',
      a: false,
    ),
    Question(
      q: 'Jose Cuervo is the number 1 selling tequila in 2020.',
      a: false,
    ),
    Question(
      q: 'All human fingerprints are unique.',
      a: true,
    ),
    Question(
      q: 'Lepers are NOT actually contagious.',
      a: false,
    ),
    Question(
      q: 'To the contrary of the mass media\'s sentiment, Donald Trump DID NOT engage in any collusion with Russia in the 2016 election.',
      a: true,
    ),
  ];
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length);
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
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
