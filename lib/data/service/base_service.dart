import 'package:dio/dio.dart';

class BaseService<R> {
  final Dio _dio = Dio();

  BaseService();

  Future<Response<R>?> get({
    required String url,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.get<R>(
        url,
        queryParameters: queryParameters,
        options: options ??
            Options(
              responseType: ResponseType.json,
              headers: {
                'Content-Type': 'application/json',
              },
            ),
      );
      return response;
    } catch (e) {
      print('GET request failed: $e');
      return null;
    }
  }
}
