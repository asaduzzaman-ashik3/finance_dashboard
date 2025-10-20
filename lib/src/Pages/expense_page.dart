import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ExpensePage extends StatelessWidget {
  const ExpensePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Expense Page")),
      body: Center(
        child: Text(
          "This is the Expense Page",
          style: const TextStyle(fontSize: 24),
        )
        // Animate the text: fade in + scale up
        .animate()
        .fadeIn(duration: 200.ms)      // fade in
        .scale(duration: 500.ms),    // scale up
      ),
    );
  }
}
