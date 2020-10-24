class Memory {
  int _gb;

  Memory(this._gb);

  int get gb => _gb;

  set gb(int value) {
    _gb = value;
  }
}