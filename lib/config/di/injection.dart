/*


final sl = GetIt.instance;

Future<void> setupDependencies(BuildEnvironment environment) async {
  // =========================
  // Network
  // =========================
 sl.registerSingleton<BuildEnvironment>(
    environment,
  );
  sl.registerLazySingleton<Dio>(
    () {
      final dio = Dio(
        BaseOptions(
          baseUrl: 'https://api.example.com',
          connectTimeout: const Duration(seconds: 15),
          receiveTimeout: const Duration(seconds: 15),
          sendTimeout: const Duration(seconds: 15),
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
        ),
      );

      dio.interceptors.add(
        LoggingInterceptor(),
      );

      dio.interceptors.add(
        AuthInterceptor(
          getAccessToken: () {
            return '';
          },
        ),
      );

      return dio;
    },
  );

  sl.registerLazySingleton<DioClient>(
    () => DioClient(sl<Dio>()),
  );
  ----------------------------------------------------------------------------
  sl.registerLazySingleton<Dio>(
  () {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.example.com',
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        sendTimeout: const Duration(seconds: 15),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );
    dio.interceptors.add(
  AuthInterceptor(
    getAccessToken: tokenStorage.getAccessToken,
  ),
);

  if(kDebugMode){  dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
        compact: true,
      ),
    );}

    return dio;
  },
);
  -------------------------------------------------------------------------------

  // =========================
  // Data
  // =========================

  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSource(
      sl<DioClient>(),
    ),
  );

  // =========================
  // Repository
  // =========================

  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      sl<AuthRemoteDataSource>(),
    ),
  );

  // =========================
  // UseCase
  // =========================

  sl.registerLazySingleton<SendOtpUseCase>(
    () => SendOtpUseCase(
      sl<AuthRepository>(),
    ),
  );

  // =========================
  // Bloc
  // =========================

  sl.registerFactory<AuthBloc>(
    () => AuthBloc(
      sendOtpUseCase: sl<SendOtpUseCase>(),
    ),
  );
}
*/
