import 'second_screen.dart';
import 'model/diceFaceModel.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<DiceFaceModel>(
        builder: (BuildContext context, Widget child, DiceFaceModel model) {
      return Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      child: Image.asset(
                        'images/dice${model.leftDice}.png',
                      ),
                      onPressed: () {
                        model.changeDiceFace(
                            model.randomNumbers(), model.randomNumbers());
                      },
                    ),
                  ),
                  //Get students to create the second die as a challenge
                  Expanded(
                    child: FlatButton(
                      child: Image.asset(
                        'images/dice${model.rightDice}.png',
                      ),
                      onPressed: () {
                        model.changeDiceFace(
                            model.randomNumbers(), model.randomNumbers());
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: FloatingActionButton(
                  heroTag: "Button 1",
                  child: Icon(Icons.navigate_next),
                  backgroundColor: Colors.purple,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return SecondScreen();
                      }),
                    );
                  }),
            )
          ],
        ),
      );
    });
  }
}
