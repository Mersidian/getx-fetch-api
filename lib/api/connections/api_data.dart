import 'package:dio/dio.dart';
import 'package:flutter_application/api/api.dart';
import 'package:flutter_application/models/user_model.dart';

class ApiUser {
  static Future<List<UserModel>> getUser() async {
    try {
      final res = await dio.get('/users');
      List json = res.data;

      List<UserModel> list = [];
      list = json.map((data) => UserModel.fromJson(data)).toList();
      return list;
    } on DioException catch (e) {
      throw Exception(e);
    }
  }
}
