import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Connection Timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'Send Timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'Receive Timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: 'badCertificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: 'Request to ApiServer was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: 'connectionError');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure(errMessage: 'No Internet Connection');
        }
        return ServerFailure(errMessage: 'Unknown Error');
      default:
        return ServerFailure(
            errMessage: 'Oops! Something went wrong, Please try again later');
    }
  }
  factory ServerFailure.fromResponse(dynamic response, int statusCode) {
    if (statusCode == 400 ||
        statusCode == 401 ||
        statusCode == 403 ||
        statusCode == 404) {
      return ServerFailure(errMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          errMessage: 'Your request not found, Please try again later');
    } else if (statusCode == 500) {
      return ServerFailure(errMessage: 'Internal Server Error');
    } else {
      return ServerFailure(
          errMessage: 'Oops! Something went wrong, Please try again later');
    }
  }
}
