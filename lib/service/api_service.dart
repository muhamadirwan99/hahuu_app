import 'package:dio/dio.dart';
import 'package:hahuu_app/config.dart';
import 'package:hahuu_app/core.dart';
import 'package:hahuu_app/session.dart';

class ApiService {
  static final String _baseUrl = BASE_URL;
  String idUser = UserDatabase.id.toString();
  String token = AppSession.token;
  String deviceId = DeviceDatabase.id.toString();

  static Future<Map> login({
    required String username,
    required String password,
  }) async {
    var response = await Dio().post(
      "${_baseUrl}login",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "username": username,
        "password": password,
      },
    );
    Map obj = response.data;

    return obj;
  }

  static Future<Map> ubahPassword({
    required String password,
    required String passwordLama,
  }) async {
    var response = await Dio().post(
      "${_baseUrl}user/ganti-pass",
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "id": UserDatabase.id.toString(),
          "token": AppSession.token,
          "device_id": DeviceDatabase.id.toString(),
        },
      ),
      data: {
        "id_user": UserDatabase.id,
        "password": password,
        "password_lama": passwordLama,
      },
    );
    Map obj = response.data;
    return obj;
  }
}
