class Routerr {
  int _speed;
  int _currentSpeed;


  Routerr(this._speed, this._currentSpeed);

  int get speed => _speed;

  set speed(int value) {
    _speed = value;
  }

  int get currentSpeed => _currentSpeed;

  set currentSpeed(int value) {
    _currentSpeed = value;
  }
}
