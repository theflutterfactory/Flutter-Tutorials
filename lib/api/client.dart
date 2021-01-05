import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

Logger logger = Logger();

Dio client() {
  Dio dio = new Dio();

  String restAPIKey = "515EEB43-BF5B-415C-8DFE-FB1D9FE74A21";

  // dio.options.headers["Authorization"] = "some auth key";

  dio.options.baseUrl =
      "https://api.backendless.com/2DE249CD-2902-F219-FF2F-107C8E0F6A00/$restAPIKey";
  dio.options.connectTimeout = 10000;
  dio.interceptors.add(
    InterceptorsWrapper(
        onRequest: (RequestOptions options) => requestInterceptor(options),
        onResponse: (Response response) => responseInterceptor(response),
        onError: (DioError error) => errorInterceptor(error)),
  );

  return dio;
}

requestInterceptor(RequestOptions options) {
  logger.d(options);
  return options;
}

responseInterceptor(Response response) {
  logger.d(response.data);
  return response;
}

errorInterceptor(DioError error) {
  logger.d(error.error);
  logger.d(error.message);
  return error;
}
