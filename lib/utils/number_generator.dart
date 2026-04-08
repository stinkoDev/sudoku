import 'dart:math';

int randomNumber() {
  // returns a random number between 1 and 9
  return Random().nextInt(9) + 1;
}

List<int> numberArray() {
  // creates an array of random numbers to pass over to the number widgets for loop to fill the board
  List<int> array = [];
  for (int num = 1; num < 82; num++) {
    array.add(randomNumber());
  }
  return array;
}
