import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../constants/api_constants.dart';

class NetworkManager {
  late final Dio dio;

  NetworkManager() {
    dio = Dio(BaseOptions(baseUrl: ApiConstants.baseUrl));
    if (kDebugMode) dio.interceptors.add(PrettyDioLogger(responseBody: false));
  }
}
