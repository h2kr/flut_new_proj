import 'package:flut_new_proj/components/hard/cpu.dart';
import 'package:flut_new_proj/components/hard/memory.dart';
import 'package:flut_new_proj/components/hard/ram.dart';
import 'package:flut_new_proj/components/hard/router.dart';
import 'package:flut_new_proj/components/soft/antivirus.dart';
import 'package:flut_new_proj/components/soft/cracker.dart';
import 'package:flut_new_proj/components/soft/encryptor.dart';
import 'package:flut_new_proj/components/soft/firewall.dart';
import 'package:flut_new_proj/components/soft/spyware.dart';
import 'package:flut_new_proj/logic/device.dart';
import 'package:flutter/cupertino.dart';

class Data with ChangeNotifier {
  Device _device = Device(
      "POHUY 7Z",
      CPU(1000, 2),
      Memory(8),
      Ram(1),
      Routerr(5, 5),
      Spyware(100, 1, 100, 1, 50),
      Firewall(100, 1, 100, 1, 50),
      Encryptor(100, 1, 100, 1, 50),
      Cracker(100, 1, 100, 1, 50),
      Antivirus(100, 1, 100, 1, 50));

  int _protectBtc = 0;
  int _notProtectBtc;

  set protectBtc(int value) {
    _protectBtc = value;
    notifyListeners();
  }

  int get protectBtc => _protectBtc;

  Device get device => _device;

  set device(Device value) {
    _device = value;
    notifyListeners();
  }

  void changeParamDevice(Object object) {
    print("change");
    if (object is CPU) {
      device.cpu = object;
      notifyListeners();
    } else if (object is Ram) {
      device.ram = object;
      notifyListeners();
    } else if (object is Routerr) {
      device.router = object;
      notifyListeners();
    } else if (object is Memory) {
      device.memory = object;
      notifyListeners();
    }
    notifyListeners();
  }

  int get notProtectBtc => _notProtectBtc;

  set notProtectBtc(int value) {
    _notProtectBtc = value;
  }
}
