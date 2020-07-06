import 'package:scoped_model/scoped_model.dart';
import 'dart:math';

class DiceFaceModel extends Model {
  int _leftDice = 1;
  int _rightDice = 1;

  int get leftDice => _leftDice;
  int get rightDice => _rightDice;

  int randomNumbers() => Random().nextInt(6) + 1;

  void changeDiceFace(int leftDice, int rightDice) {
    this._leftDice = leftDice;
    this._rightDice = rightDice;
    notifyListeners();
  }
}
