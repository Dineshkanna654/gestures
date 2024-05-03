// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gesture Detector Example',
      home: GestureDetectorExample(),
    );
  }
}

class GestureDetectorExample extends StatefulWidget {
  @override
  _GestureDetectorExampleState createState() => _GestureDetectorExampleState();
}

class _GestureDetectorExampleState extends State<GestureDetectorExample> {
  String _message = 'Tap here';

  void _handleTap() {
    setState(() {
      _message = 'Tap detected!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Detector Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _handleTap,
          child: Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.blue,
            child: Text(
              _message,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
