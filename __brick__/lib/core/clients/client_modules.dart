import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ClientModules {
  @injectable
  Dio get dio => Dio();
}
