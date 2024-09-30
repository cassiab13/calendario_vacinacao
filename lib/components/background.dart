import 'package:flutter/material.dart';

class BackgroundDecoration extends StatelessWidget {
  final Widget child;

  const BackgroundDecoration({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/background_novo.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: child);
  }
}
