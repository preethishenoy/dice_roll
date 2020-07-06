import 'model/diceFaceModel.dart';
import 'package:flutter/material.dart';
import 'dice_page.dart';
import 'package:scoped_model/scoped_model.dart';
import 'dart:math';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<DiceFaceModel>(
      model: DiceFaceModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Dicee'),
            backgroundColor: Colors.green,
          ),
          body: DicePage(),
          floatingActionButton: RollButton(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        ),
      ),
    );
  }
}

class RollButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<DiceFaceModel>(
        builder: (BuildContext context, Widget child, DiceFaceModel model) {
      return FloatingActionButton(
        heroTag: "Button 2",
        child: Text('Roll'),
        onPressed: () {
          model.changeDiceFace(
              Random().nextInt(6) + 1, Random().nextInt(6) + 1);
        },
      );
    });
  }
}
