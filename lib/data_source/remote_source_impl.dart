import 'package:dio/dio.dart';
import 'package:myrecipeapp/data_source/remote_source.dart';

class RemoteSourceImpl implements RemoteSource {
  late Dio _dio;

  RemoteSourceImpl() {
    _initialize();
  }

  @override
  Future<Map<String, dynamic>> get({
    required String path,
    required Map<String, dynamic> queryParams,
  }) async {
    try {
      final response = await _dio.get(
        path,
        queryParameters: queryParams,
      );
      if (response.data is Map<String, dynamic>) {
        return response.data;
      } else {
        return {'data': response};
      }
    } on DioException catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<Map<String, dynamic>> post({
    required String path,
    required Map<String, dynamic> queryParams,
  }) async {
    try {
      final response = await _dio.post(
        path,
        queryParameters: queryParams,
      );
      if (response.data is Map<String, dynamic>) {
        return response.data;
      } else {
        return {'data': response};
      }
    } on DioException catch (e) {
      throw Exception(e.toString());
    }
  }

  void _initialize() {
    _dio = Dio(
      BaseOptions(
        baseUrl: "",
        queryParameters: {
          'apiKey': const String.fromEnvironment('API_KEY'),
        },
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
  }
}
