/**
 * 网络请求封装
 */
import 'package:dio/dio.dart';

class HttpUtil {
  Dio dio;
  Options options;
  HttpUtil() {
    options= Options(
      baseUrl: 'https://www.apiopen.top',
      // 连接服务器超时时间
      connectTimeout: 1000,
      receiveTimeout: 3000,
      headers: {}
    );
    dio = new Dio(options);
  }
  get(url,{data,options,cancelToken}) async{
    print('get 请求 url: $url, body:$data');
    Response response;
    try {
      response= await dio.get(url, data:data, cancelToken:cancelToken);
      print('get 请求成功！response data: ${response.data}');
    } on DioError catch (e) {
      if (CancelToken.isCancel(e)) {
        print('get 请求取消！'+ e.message);
      } else {
        print('get 请求发生错误：$e');
      }
    }
    return response;
  }
  post(url, {data,options,cancelToken}) async {
    print('post 请求 url:$url,body:$data');
    Response response;
    try {
      response=await dio.post(url,data:data,cancelToken: cancelToken);
      print('post 请求成功！ response data: ${response.data}');
    } on DioError catch (e) {
      if(CancelToken.isCancel(e)) {
        print('post 请求取消！'+ e.message);
      } else {
        print('post 请求发生错误：$e');
      }
    }
  }
}
