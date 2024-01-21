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
  // Widget? activeScreen;
  String? activeScreen = 'start-screen';
  final List<String> selectedAnswers = [];

  // @override
  // void initState() {
  //   activeScreen = StartPage(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionScreen();
  //   });
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  @override
  Widget build(BuildContext context) {
    // Widget screenWidget = StartPage(switchScreen);
    // Widget screenWidget = StartPage(switchScreen);
    // final Widget screenWidget = activeScreen == 'start-screen'
    //     ? StartPage(switchScreen)
    //     : const QuestionScreen();
    Widget screenWidget = StartPage(switchScreen);
    if (activeScreen == 'question-screen') {
      // screenWidget = const QuestionScreen();
      // screenWidget = const QuestionScreen(chooseAnswer);
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    }

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
        // child: activeScreen,
        // child: activeScreen == 'start-screen'
        //     ? StartPage(switchScreen)
        //     : const QuestionScreen(),
        child: screenWidget,
      ),
    );
  }
}
