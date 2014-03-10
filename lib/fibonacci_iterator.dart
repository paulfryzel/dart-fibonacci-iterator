library fibonacci_iterator;

class FibonacciIterator implements Iterator<int> {
  int _current = 0;
  int _next = 1;

  bool moveNext() {
    int next_next = _current + _next;
    this._current = _next;
    this._next = next_next;
    return true;
  }

  int get current => _current;
}