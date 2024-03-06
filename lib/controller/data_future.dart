import 'package:flutter_application/api/connections/api_data.dart';
import 'package:flutter_application/models/user_model.dart';
import 'package:get/get.dart';

class UserFuture extends GetxController {
  @override
  void onInit() {
    fetchUserList();
    super.onInit();
  }

  Future<List<UserModel>> futureUser = Future.value([]);

  Future<List<UserModel>> getFutureUser() async {
    final model = await ApiUser.getUser();
    return model;
  }

  Future<void> fetchUserList() async {
    futureUser = getFutureUser();
  }
}
