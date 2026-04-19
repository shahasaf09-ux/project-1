import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'questions_screen.dart';
import 'main_app_container.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends ed3fState<Quiz> {
  late Widget activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = WelcomeScreen(
      title: 'Welcome to Quiz App',
      startQuiz: switchScreen,
    );
  }

  void switchScreen() {
    setState(() {
      activeScreen = const Questions();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainAppContainer(
        child: activeScreen,
      ),
    );
  }
}