/**
 * 网络请求封装
 */
import 'package:dio/dio.dart';

class HttpUtil {
  Dio dio;
  Options options;
  HttpUtil() {
    dio = new Dio(options);
  }
}
