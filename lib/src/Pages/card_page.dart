import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card Page")),
      body: Column(
        children: [
              Image.asset('assets/card2.png',)
        ],
      ),
    );
  }
}
