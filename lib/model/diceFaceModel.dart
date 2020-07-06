import 'package:scoped_model/scoped_model.dart';
import 'dart:math';
import '../second_screen.dart';

class DiceFaceModel extends Model {
  int _leftDice = Random().nextInt(6) + 1;
  int _rightDice = Random().nextInt(6) + 1;

  int get leftDice => _leftDice;
  int get rightDice => _rightDice;

  void changeDiceFace(int leftDice, int rightDice) {
    this._leftDice = leftDice;
    this._rightDice = rightDice;
    notifyListeners();
  }
}
