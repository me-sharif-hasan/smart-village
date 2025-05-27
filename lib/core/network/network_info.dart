import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../errors/failures.dart';

@injectable
class NetworkInfo {
  final Dio _dio;

  NetworkInfo(this._dio);

  Future<bool> get isConnected async {
    try {
      final response = await _dio.get('https://www.google.com');
      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }
}

class ApiEndpoints {
  static const String medical = '/medical';
  static const String agriculture = '/agriculture';
  static const String lawAndLand = '/law-and-land';
  static const String emergency = '/emergency';
  static const String auth = '/auth';
  static const String user = '/user';
}

class NetworkHelper {
  static Failure handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const NetworkFailure('সংযোগ সময়সীমা শেষ'); // Connection timeout
        
      case DioExceptionType.badResponse:
        if (error.response?.statusCode == 401) {
          return const AuthFailure('অনুমতি নেই'); // Unauthorized
        }
        return ServerFailure('সার্ভার ত্রুটি: ${error.response?.statusCode}');
        
      case DioExceptionType.cancel:
        return const NetworkFailure('অনুরোধ বাতিল করা হয়েছে'); // Request cancelled
        
      case DioExceptionType.connectionError:
        return const NetworkFailure('ইন্টারনেট সংযোগ নেই'); // No internet connection
        
      default:
        return const NetworkFailure('নেটওয়ার্ক ত্রুটি'); // Network error
    }
  }
}
