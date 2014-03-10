library fibonacci_iterator;

class FibonacciIterator implements Iterator<int> {
  final int _count;
  bool _initial = true;
  int _index = 0;
  int _current = null;
  int _next = 1;

  FibonacciIterator(this._count);

  bool moveNext() {
    if (_initial && _current == null) {
      _initial = false;
      _current = 0;
      return true;
    } else if (_index < _count) {
      _index++;
      int next_next = _current + _next;
      _current = _next;
      _next = next_next;
       return true;
    } else {
      _current = null;
      return false;
    }
  }

  int get current => _current;
}