import 'package:hahuu_app/core.dart';

class DeviceDatabase {
  static String? id = "";

  static load() async {
    id = mainStorage.get("idDevice");
  }

  static save(String? id) async {
    mainStorage.put("idDevice", id);
    DeviceDatabase.id = id;
  }
}
