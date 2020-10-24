class CPU {
  int _cpuPP;
  int _cpuNumOfCores;

  CPU(this._cpuPP, this._cpuNumOfCores);

  // ignore: unnecessary_getters_setters
  int get cpuPP => _cpuPP;
  set cpuPP(int value) {
    _cpuPP = value;
  }

  int get cpuNumOfCores => _cpuNumOfCores;
  set cpuNumOfCores(int value) {
    _cpuNumOfCores = value;
  }

}