import 'question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


class QuizzBrain{
  int _questionNumber = 0;
  List<Question> _questionBank =[
    Question( '1:You can lead a cow down stairs but not up stairs.',  false, ),
    Question( '2:Approximately one quarter of human bones are in the feet.',  true,),
    Question('3:A slug\'s blood is green.',  true,),
    Question('4:Some cats are actually allergic to humans', true),
    Question('5:Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('6:It is illegal to pee in the Ocean in Portugal.', true),
    Question('7:No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question('8:In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question('9:The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question('10:The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('11:Google was originally called \"Backrub\".', true),
    Question('12:Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question('13:In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
    Question('14:موليا قحبة؟.',
        true),
    Question('أنتهت الأسئلة إحصل على النتيجة',null),


  ];
  void nextQuestion()
  {
    if(_questionNumber < _questionBank.length - 1)
      {
        _questionNumber++;
      }


  }
  String getQuestionText ()
  {
    return _questionBank[_questionNumber].questionText;
  }
  bool getQuestionAnswer ()
  {
    return _questionBank[_questionNumber].questionAnswer;
  }
  bool isFinished() {
    if (_questionNumber >= _questionBank.length -1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.


      return true;

    } else {
      return false;
    }
  }
  void reset() {
    _questionNumber = 0;

  }
}