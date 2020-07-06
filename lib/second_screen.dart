import 'model/diceFaceModel.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'main.dart';
import 'main.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dice Roll'),
        backgroundColor: Colors.green[900],
      ),
      body: ScopedModelDescendant<DiceFaceModel>(
          builder: (BuildContext context, Widget child, DiceFaceModel model) {
        return Center(
          child: Card(
            margin: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
            child: ListTile(
              title: Text(
                'Left die: ${model.leftDice} , Right Die:${model.rightDice} ',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro'),
              ),
            ),
          ),
        );
      }),
      floatingActionButton: RollButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
