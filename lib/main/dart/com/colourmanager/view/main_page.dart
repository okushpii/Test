import 'package:colour_manager/main/dart/com/colourmanager/controller/colour_controller.dart';
import 'file:///C:/Users/Eugene/AndroidStudioProjects/colour_manager/lib/main/dart/com/colourmanager/view/widgets/page_statefull_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends State<MainPageStateFullWidget> {

  int _colourValue = 0xffffffff;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: _setColourValue,
      child: Scaffold(
          backgroundColor: Color(_colourValue),
          body: Center(
              child: Text(
                "Hi there!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ))),
    );
  }

  void _setColourValue() {
    setState(() => _colourValue = ColourController().getRandomColour());
  }
}
