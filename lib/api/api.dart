import 'package:dio/dio.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: "https://jsonplaceholder.typicode.com",
    connectTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 60),
    contentType: Headers.jsonContentType,
  ),
);
