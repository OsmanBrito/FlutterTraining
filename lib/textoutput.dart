import 'package:flutter/material.dart';

class TextOutPut extends StatelessWidget {

  final String textOutPut;

  TextOutPut(this.textOutPut);

  @override
    Widget build(BuildContext context) {
      return Container(
        child: Text(textOutPut),
      );
    }
}