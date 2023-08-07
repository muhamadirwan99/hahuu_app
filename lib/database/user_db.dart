import 'package:hahuu_app/core.dart';

class UserDatabase {
  static String? id = "";
  static String? userName = "";
  static String? surName = "";
  static Map? dataRole = {};

  static load() async {
    id = mainStorage.get("id");
    userName = mainStorage.get("userName");
    surName = mainStorage.get("surName");
    dataRole = mainStorage.get("dataRole");
  }

  static save(
      String? id, String? userName, String? surName, Map? dataRole) async {
    mainStorage.put("id", id);
    mainStorage.put("userName", userName);
    mainStorage.put("surName", surName);
    mainStorage.put("dataRole", dataRole);

    UserDatabase.id = id;
    UserDatabase.userName = userName;
    UserDatabase.surName = surName;
    UserDatabase.dataRole = dataRole;
  }
}
