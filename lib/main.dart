import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {

 
  @override

  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
 List<Icon> scoreKeeper = [
          Icon(
              Icons.check,
              color: Colors.green,
            ),
             Icon(
              Icons.close,
              color: Colors.red,
            ),
             Icon(
              Icons.close,
              color: Colors.red,
            ),
             Icon(
              Icons.close,
              color: Colors.red,
            ),
             Icon(
              Icons.close,
              color: Colors.red,
            ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'This is where the question text will go.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style:ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
              ) ,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                 scoreKeeper.add(
                  Icon(Icons.check,
                  color: Colors.green,
                  ),
                 );
                });
                //The user picked true.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style:ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
              ),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                setState(() {
                 scoreKeeper.add(
                  Icon(Icons.close,
                  color: Colors.red,
                  ),
                 );
                });
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
        //To check github
         //To check github
           //To check github
           //another line
           //third line
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
