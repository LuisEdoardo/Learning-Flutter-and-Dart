import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
  final _question = const [
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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _question.length) {
      print('Tenemos mas preguntas!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cuestionario"),
          backgroundColor: Color.fromARGB(255, 154, 40, 247),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                question: _question)
            : Result(),
      ),
    );
  }
}
