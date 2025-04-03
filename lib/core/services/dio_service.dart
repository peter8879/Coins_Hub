import 'package:coins_hub/core/services/data_base_service.dart';
import 'package:dio/dio.dart';

import '../errors/custom_exeption.dart';

class DioService implements DataBaseService {
  Dio _dio =Dio();
  final String baseUrl="https://api.coinlore.net/api/";


  @override
  Future getData({required String path, String? id, Map<String, dynamic>? queryParameters}) async{
try{
  var result=await _dio.get(baseUrl+path);
  return result.data['data'];
}
catch(e)
    {
      if(e is DioException)
        {
          switch(e.error){
            case(DioExceptionType.sendTimeout):
              throw CustomException("'Send Time Out'");
            case(DioExceptionType.connectionTimeout):
              throw CustomException('Connection Time Out');
            case(DioExceptionType.receiveTimeout):
              throw CustomException('Receive Time Out');
            case(DioExceptionType.badResponse):
              throw CustomException('Bad Response');
            case(DioExceptionType.cancel):
              throw CustomException('Request was canceled');
            case(DioExceptionType.badCertificate):
              throw CustomException('Request was bad certified');
            case(DioExceptionType.connectionError):
              throw CustomException('Connection Time Out');
            case(DioExceptionType.unknown):
              if(e.message!=null){
                if (e.message!.contains('SocketException')){
                  throw CustomException('No internet connection');
                }
              }
              throw CustomException('Un exepected error please try again later');






          }
        }
      throw CustomException('Un exepected error please try again later');


    }
  }

}
