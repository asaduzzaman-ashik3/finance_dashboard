import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpensePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expense Page")),
      body: Center(child: Text("Welcome to Expense Page")),
    );
  }
}
