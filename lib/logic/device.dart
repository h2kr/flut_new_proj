import 'package:flut_new_proj/components/hard/cpu.dart';
import 'package:flut_new_proj/components/hard/memory.dart';
import 'package:flut_new_proj/components/hard/ram.dart';
import 'package:flut_new_proj/components/hard/router.dart';
import 'package:flut_new_proj/components/soft/antivirus.dart';
import 'package:flut_new_proj/components/soft/cracker.dart';
import 'package:flut_new_proj/components/soft/encryptor.dart';
import 'package:flut_new_proj/components/soft/firewall.dart';
import 'package:flut_new_proj/components/soft/spyware.dart';

class Device {
  String _name;

  CPU _cpu;
  Memory _memory;
  Ram _ram;
  Routerr _router;

  Spyware _spyware;
  Firewall _firewall;
  Encryptor _encryptor;
  Cracker _cracker;
  Antivirus _antivirus;

  Device(
      this._name,
      this._cpu,
      this._memory,
      this._ram,
      this._router,
      this._spyware,
      this._firewall,
      this._encryptor,
      this._cracker,
      this._antivirus);

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  CPU get cpu => _cpu;

  Memory get memory => _memory;

  Ram get ram => _ram;

  Routerr get router => _router;

  Spyware get spyware => _spyware;

  Firewall get firewall => _firewall;

  Encryptor get encryptor => _encryptor;

  Cracker get cracker => _cracker;

  Antivirus get antivirus => _antivirus;

  set antivirus(Antivirus value) {
    _antivirus = value;
  }

  set cracker(Cracker value) {
    _cracker = value;
  }

  set encryptor(Encryptor value) {
    _encryptor = value;
  }

  set firewall(Firewall value) {
    _firewall = value;
  }

  set spyware(Spyware value) {
    _spyware = value;
  }

  set router(Routerr value) {
    _router = value;
  }

  set ram(Ram value) {
    _ram = value;
  }

  set memory(Memory value) {
    _memory = value;
  }

  set cpu(CPU value) {
    _cpu = value;
  }
}
