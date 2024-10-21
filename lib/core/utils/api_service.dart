import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://api.escuelajs.co/api/v1/';
  final Dio dio;

  ApiService(this.dio);
  Future<List<dynamic>> get({required String endPoint}) async {
    try {
      final response = await dio.get(_baseUrl + endPoint);
      return response.data;
    } on DioException catch (e) {
      return e.response!.data;
    }
  }
}
