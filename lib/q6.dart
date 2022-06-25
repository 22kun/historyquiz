import 'package:flutter/material.dart';
import 'package:historyquiz/incorreto.dart';
import 'package:historyquiz/q1.dart';
import 'package:historyquiz/q7.dart';

class Q6 extends StatelessWidget {
  const Q6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Historyquiz',
      theme: ThemeData(
          fontFamily: 'Koulen', appBarTheme: AppBarTheme(color: Colors.black)),
      home: const MyHomePage(title: 'Historyquiz - Questão 6'),
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
                  'Pergunta 6.',
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
                  'As pinturas rupestres são evidências \nmateriais do desenvolvimento \nintelectual dos seres humanos. \nEmbora tradicionalmente estudadas \npela Arqueologia, elas ajudaram a \nredefinir a concepção de que a \nHistória se inicia com a escrita, pois...',
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
                                count++;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Q7()));
                              },
                              child: Text(
                                  'funcionam como códices velados de uma \ncomunidade à espera de decifração',
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
                                  'expressam uma concepção de tempo marcada \npela cronologia',
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
                                count = 0;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Incorreto()));
                              },
                              child: Text(
                                  'indicam o predomínio da técnica sobre as \nforças da natureza',
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
                                  'atestam as relações entre registros \ngráficos e mitos de origem',
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
