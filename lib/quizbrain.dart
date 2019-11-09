import 'question.dart';
class QuizBrain
{
  int _questionNumber=0;
  List<Question> _question=[
    Question('A slug\'s blood is green.',false),
    Question('You can lead a cow down stairs but not up stairs.',true),
    Question('Approximately one quarter of human bones are in the feet.',true)
  ];

  void nextquestion()
  {
    if(_questionNumber<_question.length-1)
      _questionNumber++;
  }
  String getQuestion()
  {
    return _question[_questionNumber].question;
  }

  bool getAnswer()
  {
    return _question[_questionNumber].answer;
  }

  bool isFinish()
  {
    if(_questionNumber==_question.length-1) {
      return true;
    }else {
      return false;
    }
  }

  void reset()
  {
    _questionNumber=-1;
  }
}