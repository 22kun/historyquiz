import 'package:flutter/material.dart';
import 'q1.dart';

class Rules extends StatelessWidget {
  const Rules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Historyquiz',
      theme: ThemeData(
          fontFamily: 'Koulen', appBarTheme: AppBarTheme(color: Colors.black)),
      home: const MyHomePage(title: 'HistoryQuiz - Regras'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    side: BorderSide(width: 0, color: Colors.white),
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Column(children: [
            Text(
              'Regras',
              style: TextStyle(color: Colors.white, fontSize: 95),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 500,
                  width: 350,
                  color: Colors.black,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '      • Este jogo é um quiz.',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '      • São 16 perguntas.',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '      • Alternativa errada = Game Over.',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 200,
                      ),
                      TextButton(
                        style: flatButtonStyle,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Q1()));
                        },
                        child: Text('Entendi!! Quero Jogar',
                            style: TextStyle(fontSize: 30)),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ]),
        ],
      ),
    );
  }
}
