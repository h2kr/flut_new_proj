class Encryptor {
  int _weight;
  int _lvl;
  int _ram;
  int _web;
  int _cpu;

  Encryptor(this._weight, this._lvl, this._ram, this._web, this._cpu);

  int get cpu => _cpu;

  set cpu(int value) {
    _cpu = value;
  }

  int get web => _web;

  set web(int value) {
    _web = value;
  }

  int get ram => _ram;

  set ram(int value) {
    _ram = value;
  }

  int get lvl => _lvl;

  set lvl(int value) {
    _lvl = value;
  }

  int get weight => _weight;

  set weight(int value) {
    _weight = value;
  }
}