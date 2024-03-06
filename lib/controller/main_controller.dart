import 'package:flutter_application/controller/data_future.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  UserFuture userFuture = Get.put(UserFuture());
}
