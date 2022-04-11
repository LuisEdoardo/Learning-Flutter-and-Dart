import 'package:flutter/material.dart';

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
      'Cual es tu color favorito?',
      'Cual es tu animal favorito?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mi primera vez..."),
          backgroundColor: Color.fromARGB(255, 154, 40, 247),
        ),
        body: Column(children: [
          Text(question[_questionIndex]),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: Text('Primera Respuesta'),
          ),
          ElevatedButton(
            onPressed: () => print("Respuesta 2"),
            child: Text('Segunda Respuesta'),
          ),
          ElevatedButton(
            onPressed: () {
              print("Respuesta 3");
            },
            child: Text('Tercera Respuesta'),
          ),
          Text("Algun dia creare un pinche Netflix, Te lo prometo IBON")
        ]),
      ),
    );
  }
}
