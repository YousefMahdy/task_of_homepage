import 'package:dio/dio.dart';
import '../../components/constants.dart';

class DioHelper{
  static  late Dio dio ;


  static init () {
    dio = Dio(BaseOptions(
        baseUrl: 'https://app.cashpoint21.com/api/',

         receiveDataWhenStatusError: true

    ));
  }

    static Future < Response<dynamic>>getData({
     required String path,
        Map<String,dynamic>?query,

      String lang='en',

    }) async {
      dio.options.headers={
            "lang":lang,
      "Content-Type" :"application/json",
            "Authorization":token

          };
     return await dio.get(path,queryParameters: query);

    }
  static Future < Response<dynamic>>postData({
    required String path,
      Map<String,dynamic>? query,
    required Map<String,dynamic> data,
    String lang='en',

  }) async {
    dio.options.headers={
        "lang":lang,
        "Authorization":token,
      "Content-Type" :"application/json"
      };

    return await dio.post(path,queryParameters: query,data: data);
}



}