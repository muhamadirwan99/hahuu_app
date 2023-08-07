import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hahuu_app/core.dart';
import 'package:hahuu_app/session.dart';

Future initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    var path = await getTemporaryDirectory();
    Hive.init(path.path);
  }
  mainStorage = await Hive.openBox('mainStorage');

  await UserDatabase.load();
  await DeviceDatabase.load();

  AppSession.token = mainStorage.get("token") ?? "";
  UserDatabase.id = await mainStorage.get("id") ?? "";
}
