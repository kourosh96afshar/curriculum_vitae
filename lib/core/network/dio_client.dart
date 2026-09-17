
// import 'package:dio/dio.dart';


// class DioClient {
//   late final Dio _dio;

//   DioClient({
//     required String baseUrl,
//   }) {
//     _dio = Dio(
//       BaseOptions(
//         baseUrl: baseUrl,
//         connectTimeout: const Duration(seconds: 15),
//         receiveTimeout: const Duration(seconds: 15),
//         sendTimeout: const Duration(seconds: 15),
//         headers: {
//           'Content-Type': 'application/json',
//           'Accept': 'application/json',
//         },
//       ),
//     );
//   }

//   Dio get dio => _dio;

//   Future<Response<T>> get<T>(
//     String path, {
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//     CancelToken? cancelToken,
//   }) {
//     return _dio.get<T>(
//       path,
//       queryParameters: queryParameters,
//       options: options,
//       cancelToken: cancelToken,
//     );
//   }

//   Future<Response<T>> post<T>(
//     String path, {
//     dynamic data,
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//     CancelToken? cancelToken,
//   }) {
//     return _dio.post<T>(
//       path,
//       data: data,
//       queryParameters: queryParameters,
//       options: options,
//       cancelToken: cancelToken,
//     );
//   }

//   Future<Response<T>> put<T>(
//     String path, {
//     dynamic data,
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//     CancelToken? cancelToken,
//   }) {
//     return _dio.put<T>(
//       path,
//       data: data,
//       queryParameters: queryParameters,
//       options: options,
//       cancelToken: cancelToken,
//     );
//   }

//   Future<Response<T>> delete<T>(
//     String path, {
//     dynamic data,
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//     CancelToken? cancelToken,
//   }) {
//     return _dio.delete<T>(
//       path,
//       data: data,
//       queryParameters: queryParameters,
//       options: options,
//       cancelToken: cancelToken,
//     );
//   }
// }