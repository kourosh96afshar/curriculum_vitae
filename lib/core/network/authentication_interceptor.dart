// import 'package:dio/dio.dart';

// class AuthInterceptor extends Interceptor {
//   final String Function() getAccessToken;

//   AuthInterceptor({required this.getAccessToken});

//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     final token = getAccessToken();

//     if (token.isNotEmpty) {
//       options.headers['Authorization'] = 'Bearer $token';
//     }

//     handler.next(options);
//   }


// }
