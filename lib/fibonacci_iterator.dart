library fibonacci_iterator;

class FibonacciIterator<Integer> implements Iterator<Integer> {
  int _current = 1;
  int _next = 1;

  bool moveNext() {
    int next_next = _current + _next;
    this._current = _next;
    this._next = next_next;
    return true;
  }

  int get current => _current;
}