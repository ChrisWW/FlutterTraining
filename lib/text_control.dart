import 'package:flutter/material.dart';

import 'text_output.dart';

class TextControl extends StatefulWidget {
  @override
  _TextControlState createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  String mainText = 'This is the first assignment';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () => {
            setState(() => {mainText = 'This text changed'})
          },
          child: Text('Click Me'),
        ),
        TextOutput(mainText)
      ],
    );
  }
}
