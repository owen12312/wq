// ignore_for_file: unnecessary_new, void_checks

import 'dart:async';
import 'package:dio/dio.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/material.dart';
import 'package:yu_gou_app/utils/utils.dart';
import 'package:yu_gou_app/values/values.dart';
class HttpUtil {
  static final HttpUtil _instance = HttpUtil._internal();
  factory HttpUtil() => _instance;

  var dio = Dio();
  CancelToken cancelToken = new CancelToken();

  HttpUtil._internal() {
    // BaseOptions、Options、RequestOptions 都可以配置参数，优先级别依次递增，且可以根据优先级别覆盖参数
    BaseOptions options = new BaseOptions(
      // 请求基地址,可以包含子路径
      baseUrl: SERVER_API_URL,
      // baseUrl: storage.read(key: STORAGE_KEY_APIURL) ?? SERVICE_API_BASEURL,
      //连接服务器超时时间，单位是毫秒.
      connectTimeout: 10000,
      // 响应流上前后两次接受到数据的间隔，单位为毫秒。
      receiveTimeout: 5000,
      // Http请求头.
      headers: {},
      contentType: 'application/json; charset=utf-8',
      responseType: ResponseType.json,
    );

    dio = new Dio(options);
    // ignore: non_constant_identifier_names
    void RequestOptionss(options,handler) {
       return handler?.next(options); //c
    }
    CookieJar cookieJar = CookieJar();
    dio.interceptors.add(CookieManager(cookieJar));
    // 添加拦截器
    dio.interceptors
        .add(InterceptorsWrapper(
    onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
      RequestOptionss(options,handler);//continue
    }, 
    onResponse: (Response response, ResponseInterceptorHandler handler) {
      return handler.next(response);  // continue
    }, 
    onError: (DioError e, ErrorInterceptorHandler handler) {
      ErrorEntity eInfo = createErrorEntity(e);
      // // 错误提示
      // toastInfo(msg:eInfo.message);
      // 错误交互处理
      dynamic context = e.response;
      if (context != null) {
        switch (eInfo.code) {
          case 401: // 没有权限 重新登录
            goLoginPage(context);
            break;
          default:
        }
      }
      return  handler.next(e);
    }));

    // 加内存缓存
    // dio.interceptors.add(NetCache());

    // 在调试模式下需要抓包调试，所以我们使用代理，并禁用HTTPS证书校验
    // if (!Global.isRelease && PROXY_ENABLE) {
    //   (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
    //       (client) {
    //     client.findProxy = (uri) {
    //       return "PROXY $PROXY_IP:$PROXY_PORT";
    //     };
    //     //代理工具会提供一个抓包的自签名证书，会通不过证书校验，所以我们禁用证书校验
    //     client.badCertificateCallback =
    //         (X509Certificate cert, String host, int port) => true;
    //   };
    // }
  }

  /*
   * error统一处理
   */
  // 错误信息
  ErrorEntity createErrorEntity(DioError error) {
    switch (error.type) {
      case DioErrorType.cancel:
        {
          return ErrorEntity(code: -1, message: "请求取消");
        }
      case DioErrorType.connectTimeout:
        {
          return ErrorEntity(code: -1, message: "连接超时");
        }
      case DioErrorType.sendTimeout:
        {
          return ErrorEntity(code: -1, message: "请求超时");
        }
      case DioErrorType.receiveTimeout:
        {
          return ErrorEntity(code: -1, message: "响应超时");
        }
      case DioErrorType.response:
        {
          try {
            int ? errCode = error.response?.statusCode!;
            // String errMsg = error.response.statusMessage;
            // return ErrorEntity(code: errCode, message: errMsg);
            switch (errCode) {
              case 400:
                {
                  return ErrorEntity(code: errCode, message: "请求语法错误");
                }
              case 401:
                {
                  return ErrorEntity(code: errCode, message: "没有权限");
                }
              case 403:
                {
                  return ErrorEntity(code: errCode, message: "服务器拒绝执行");
                }
              case 404:
                {
                  return ErrorEntity(code: errCode, message: "无法连接服务器");
                }
              case 405:
                {
                  return ErrorEntity(code: errCode, message: "请求方法被禁止");
                }
              case 500:
                {
                  return ErrorEntity(code: errCode, message: "服务器内部错误");
                }
              case 502:
                {
                  return ErrorEntity(code: errCode, message: "无效的请求");
                }
              case 503:
                {
                  return ErrorEntity(code: errCode, message: "服务器挂了");
                }
              case 505:
                {
                  return ErrorEntity(code: errCode, message: "不支持HTTP协议请求");
                }
              default:
                {
                  // return ErrorEntity(code: errCode, message: "未知错误");
                  return ErrorEntity(
                      code: errCode, message: error.response?.statusMessage);
                }
            }
          } on Exception catch (_) {
            return ErrorEntity(code: -1, message: "未知错误");
          }
        }
      default:
        {
          return ErrorEntity(code: -1, message: error.message);
        }
    }
    
  }

  /*
   * 取消请求
   *
   * 同一个cancel token 可以用于多个请求，当一个cancel token取消时，所有使用该cancel token的请求都会被取消。
   * 所以参数可选
   */
  void cancelRequests(CancelToken token) {
    token.cancel("cancelled");
  }

  /// 读取本地配置
  Map<String, dynamic> getAuthorizationHeader() {
    // ignore: prefer_typing_uninitialized_variables
    var headers;
    // String accessToken = Global.profile.accessToken;
    // headers = {
    //   'Authorization': 'Bearer $accessToken',
    // };
    return headers;
  }

  /// restful get 操作
  /// refresh 是否下拉刷新 默认 false
  /// noCache 是否不缓存 默认 true
  /// list 是否列表 默认 false
  /// cacheKey 缓存key
  /// cacheDisk 是否磁盘缓存
  Future get(
    String path, {
    required BuildContext context,
    dynamic params,
    Options ? options,
    bool refresh = false,
    bool noCache = !CACHE_ENABLE,
    bool list = false,
    required String cacheKey,
    bool cacheDisk = false,
  }) async {
    dynamic requestOptions = options ?? Options();
    requestOptions = requestOptions.merge(
    extra: {
      "context": context,
      "refresh": refresh,
      "noCache": noCache,
      "list": list,
      "cacheKey": cacheKey,
      "cacheDisk": cacheDisk,
    });
    Map<String, dynamic> _authorization = getAuthorizationHeader();
    requestOptions = requestOptions.merge(headers: _authorization);
    var response = await dio.get(path,
        queryParameters: params,
        options: requestOptions,
        cancelToken: cancelToken);
    return response.data;
  }

  /// restful post 操作
  Future post(
    String path, {
    dynamic params,
    Options? options,
  }) async {
    dynamic requestOptions = options ?? Options();
    // requestOptions = requestOptions.merge(extra: {
    //   "context": context,
    // });
    // Map<String, dynamic> _authorization = getAuthorizationHeader();
    // requestOptions = requestOptions.merge(headers: _authorization);
    try {
      var response = await dio.post(path,
          data: params, options: requestOptions, cancelToken: cancelToken);
      return response.data;
    } catch (error, stackTrace) {
      // ignore: avoid_print
      print("Exception occurred: $error  stackTrace: $stackTrace");
      return false;
    }

  }

  /// restful put 操作
  Future put(
    String path, {
    required BuildContext context,
    dynamic params,
    Options ?options,
  }) async {
    dynamic requestOptions = options ?? Options();
    requestOptions = requestOptions.merge(extra: {
      "context": context,
    });
    Map<String, dynamic> _authorization = getAuthorizationHeader();
    requestOptions = requestOptions.merge(headers: _authorization);
    var response = await dio.put(path,
        data: params, options: requestOptions, cancelToken: cancelToken);
    return response.data;
  }

  /// restful patch 操作
  Future patch(
    String path, {
    required BuildContext context,
    dynamic params,
    Options ?options,
  }) async {
    dynamic requestOptions = options ?? Options();
    requestOptions = requestOptions.merge(extra: {
      "context": context,
    });
    Map<String, dynamic> _authorization = getAuthorizationHeader();
    requestOptions = requestOptions.merge(headers: _authorization);
    var response = await dio.patch(path,
        data: params, options: requestOptions, cancelToken: cancelToken);
    return response.data;
  }

  /// restful delete 操作
  Future delete(
    String path, {
    required BuildContext context,
    dynamic params,
    required Options options,
  }) async {
    dynamic requestOptions = options;
    requestOptions = requestOptions.merge(extra: {
      "context": context,
    });
    Map<String, dynamic> _authorization = getAuthorizationHeader();
    requestOptions = requestOptions.merge(headers: _authorization);
    var response = await dio.delete(path,
        data: params, options: requestOptions, cancelToken: cancelToken);
    return response.data;
  }

  /// restful post form 表单提交操作
  Future postForm(
    String path, {
    dynamic params,
    Options ? options,
  }) async {
    dynamic requestOptions = options ?? Options();
    // requestOptions = requestOptions.merge(extra: {
    //   "context": context,
    // });
    Map<String, dynamic> _authorization = getAuthorizationHeader();
    requestOptions = requestOptions.merge(headers: _authorization);
    var response = await dio.post(path,
        data: FormData.fromMap(params),
        options: requestOptions,
        cancelToken: cancelToken);
    return response.data;
  }

  /// restful post form 表单提交操作
  Future postBody(
    String path, {
    dynamic params,
    String fileName = '',
    Options ? options,
  }) async {
    dynamic requestOptions = options ?? Options();
    List<MultipartFile> _filesList = [];
    var formData = FormData.fromMap({
      'flie':_filesList
    });
    Map<String, dynamic> _httpHeaders = {
      'Accept': 'application/json,*/*',
      'Content-Type': 'multipart/form-data',
    };

    requestOptions = requestOptions.merge(headers: _httpHeaders);
    var response = await dio.post(path,
        data: formData,
        cancelToken: cancelToken);
    return response.data;
  }
}



// 异常处理
class ErrorEntity implements Exception {
  int ? code;
  String ? message;
  ErrorEntity({
    required this.code, 
    required this.message
    });
  @override
  String toString() {
    return "Exception: code $code, $message";
  }
}
