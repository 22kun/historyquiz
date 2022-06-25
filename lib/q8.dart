import 'package:flutter/material.dart';
import 'package:historyquiz/incorreto.dart';
import 'package:historyquiz/q1.dart';
import 'package:historyquiz/q9.dart';

class Q8 extends StatelessWidget {
  const Q8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Historyquiz',
      theme: ThemeData(
          fontFamily: 'Koulen', appBarTheme: AppBarTheme(color: Colors.black)),
      home: const MyHomePage(title: 'Historyquiz - Questão 8'),
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
    primary: Colors.black,
    backgroundColor: Colors.white,
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
      body: Center(
        child: ListView(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text('      '),
                Text('Acertos: $count',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Pergunta 8.',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 25,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Qual das alternativas abaixo apresenta \na sequência correta das fases da \nPré-História?',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 365,
                    height: 500,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            TextButton(
                              style: flatButtonStyle,
                              onPressed: () {
                                count = 0;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Incorreto()));
                              },
                              child: Text(
                                  'Mesolítico, Neolítico, Idade dos Metais \ne Paleolítico',
                                  style: TextStyle(fontSize: 15)),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            TextButton(
                              style: flatButtonStyle,
                              onPressed: () {
                                count = 0;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Incorreto()));
                              },
                              child: Text(
                                  'Idade da Pedra Polida, Idade da Pedra Lascada \ne Idade Média',
                                  style: TextStyle(fontSize: 15)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            TextButton(
                              style: flatButtonStyle,
                              onPressed: () {
                                count++;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Q9()));
                              },
                              child: Text('Paleolítico, Mesolítico e Neolítico',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            TextButton(
                              style: flatButtonStyle,
                              onPressed: () {
                                count = 0;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Incorreto()));
                              },
                              child: Text(
                                  'Idade Antiga, Idade da Pedra, Idade das \nCavernas e Idade dos Metais',
                                  style: TextStyle(fontSize: 15)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
