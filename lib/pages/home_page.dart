//  //
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import  FILES
import 'question_screen.dart';
import 'start_page.dart';
//  PARTS
//  PROVIDERS

//

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Widget activeScreen = const StartPage(switchScreen);
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartPage(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color.fromARGB(255, 46, 4, 89),
              Color.fromARGB(255, 159, 55, 229),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        // child: const StartPage(),
        child: activeScreen,
      ),
    );
  }
}
