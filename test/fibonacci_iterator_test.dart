library fibonacci_iterator;

import 'package:unittest/unittest.dart';

import 'package:fibonacci_iterator/fibonacci_iterator.dart';

void main() {
  test('Fibonacci Iterator', () {
    var check = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144];
    var fibonacci = new FibonacciIterator();

    for (num n in check) {
      expect(fibonacci.current, n);
      expect(fibonacci.moveNext(), true);
    }
  });
}