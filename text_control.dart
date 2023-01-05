import 'package:flutter/material.dart';
import './text.dart';

class TextControl extends StatefulWidget {
  @override
  State<TextControl> createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  String _mainText = 'Welcome User!';

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        ElevatedButton(
            child: Text('Next Step'),
            onPressed: () {
              // SetState will change the _mainText
              setState(() {
                _mainText = 'Let\'s get started!';
              });
            }),
        TextOutput(_mainText)
      ],
    ));
  }
}
