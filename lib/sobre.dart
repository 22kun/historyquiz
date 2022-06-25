import 'package:flutter/material.dart';
import 'menu.dart';

class Sobre extends StatelessWidget {
  const Sobre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Historyquiz',
      theme: ThemeData(
          fontFamily: 'Koulen', appBarTheme: AppBarTheme(color: Colors.black)),
      home: const MyHomePage(title: 'HistoryQuiz - Sobre'),
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
      body: ListView(children: [
        Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text('   '),
                TextButton(
                  style: flatButtonStyle,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Menu()));
                  },
                  child: Text('<',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
              ],
            ),
            Text(
              'Sobre',
              style: TextStyle(color: Colors.white, fontSize: 95),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'o projeto:',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 25,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'O HistoryQuiz possui fins acadêmicos.',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Escola: EEFM Dr. Gentil Barreira - UV2',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Eletiva: Produções Científicas',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Desenvolvedor do aplicativo',
                            style: TextStyle(color: Colors.blue, fontSize: 25),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Artur de Maria',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'GitHub: 22kun',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Criação de fases',
                            style: TextStyle(color: Colors.blue, fontSize: 25),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Artur de Maria',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Maria Vitória Barbosa Martins',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Taynara Barbosa de Sousa',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Evelle Marianne da Silva Paiva',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Rodrigo Teófilo Rodrigues',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Ferramentas',
                            style: TextStyle(color: Colors.blue, fontSize: 25),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Google',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Linguagem de Programação: Dart',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Framework: Flutter',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Versão',
                            style: TextStyle(color: Colors.blue, fontSize: 25),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'v1.0.1',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
