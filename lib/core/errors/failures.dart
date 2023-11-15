import 'package:dio/dio.dart';
abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServiceFailure extends Failure {
  ServiceFailure(super.errorMessage);

  factory ServiceFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServiceFailure('Connection time out with server');
      case DioExceptionType.sendTimeout:
        return ServiceFailure('Send time out with server');
      case DioExceptionType.receiveTimeout:
        return ServiceFailure('Receive time out with server');
      case DioExceptionType.badCertificate:
        return ServiceFailure('Bad certificate, unauthorized');
      case DioExceptionType.badResponse:
        return ServiceFailure.fromResponse(dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServiceFailure('Request was canceled, Please try later!');
      case DioExceptionType.connectionError:
        return ServiceFailure('Connection Error, Check your connection');
      case DioExceptionType.unknown:
        return ServiceFailure('Oops!!, There is an error');
      default:
        return ServiceFailure('Unexpected error, Please try again!');

    }
  }

  factory ServiceFailure.fromResponse(int statusCode ,dynamic response){
    if(statusCode == 400 || statusCode == 401 || statusCode == 403){
      return ServiceFailure(response['error']['message']);
    }else if(statusCode ==404){
      return ServiceFailure('Request not found, Please try later!');
    }else if(statusCode == 500){
      return ServiceFailure('Internal server error, Please try later!');
    }else{
      return ServiceFailure('Oops! There is an error , please try again!');
    }
  }
}
