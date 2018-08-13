import 'package:flutter/material.dart';

import 'package:problem/textoutput.dart';

class TextOutPutManager extends StatefulWidget {

  final String startingTextOutPut;

  TextOutPutManager({this.startingTextOutPut = 'Start TextOutPut'});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextOutPutManagerState();
  }
}

class _TextOutPutManagerState extends State<TextOutPutManager> {
  String _textOutPut;
  int count = 0;

  @override
  void initState() {
    _textOutPut = widget.startingTextOutPut;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(15.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                _textOutPut = 'New value' + count.toString();
                count ++;
              });
            },
            child: Text('Change Text'),
          ),
        ),
        TextOutPut(_textOutPut)
      ],
    );
  }
}
