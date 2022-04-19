import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

//void main() {
//  runApp(FirstApp());
//}

void main() => runApp(FirstApp());

class FirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FirstAppState();
  }
}

class _FirstAppState extends State<FirstApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      {
        'questionText': 'Cual es tu color favorito?',
        'answers': ['Negro', 'Blanco', 'Morado']
      },
      {
        'questionText': 'Cual es tu animal favorito?',
        'answers': ['Gato', 'Perro', 'Oso']
      },
      {
        'questionText': 'Cual es tu comida favorita?',
        'answers': ['Sushi', 'Filete', 'Hamburguesa']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mi primera vez..."),
          backgroundColor: Color.fromARGB(255, 154, 40, 247),
        ),
        body: Column(children: [
          Question(question[_questionIndex]['questionText'] as String),
          ...(question[_questionIndex]['answers'] as List<String>)
              .map((answers) {
            return Answer(_answerQuestion, answers);
          }).toList()
        ]),
      ),
    );
  }
}
