library fibonacci_iterator;

import 'package:unittest/unittest.dart';

import 'package:fibonacci_iterator/fibonacci_iterator.dart';

void main() {
  group('Fibonacci Iterator', () {
    List<int> check = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144];
    FibonacciIterator fibonacci = new FibonacciIterator(check.length - 1);

    // via: https://api.dartlang.org/apidocs/channels/dev/#dart-core.Iterator

    test('returns null if the iterator has not yet been moved', () {
      expect(fibonacci.current, null);
    });

    test('iterates over the expected range of Fibonacci numbers', () {
      for (int n in check) {
        expect(fibonacci.moveNext(), true);
        expect(fibonacci.current, n);
      }
    });

    test('returns false if no element was left', () {
      expect(fibonacci.moveNext(), false);
      expect(fibonacci.moveNext(), false); // repeat should be safe
    });

    test('returns null if the iterator has been moved after the last element', () {
      expect(fibonacci.current, null);
    });
  });
}