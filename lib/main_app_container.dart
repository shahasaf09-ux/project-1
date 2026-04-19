import 'package:flutter/material.dart';

class MainAppContainer extends StatelessWidget {
  final Widget child;
  const MainAppContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 100, 149, 235),
            Color.fromARGB(255, 18, 59, 196),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: child,
    );
  }
}