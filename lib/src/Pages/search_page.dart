import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),

      ),
      body: Center(
        child: Text('This is Search age',style: TextStyle(fontSize: 30),),
      ),
    );
  }
}