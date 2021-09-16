import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  
  String text;

  SecondScreen({ required this.text });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lightning Talks Flutter'),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}