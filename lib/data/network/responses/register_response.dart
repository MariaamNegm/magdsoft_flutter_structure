import 'package:dio/dio.dart';

import '../../../constants/end_points.dart';
import '../../models/account_model.dart';

Future<String?> Register_in()async{
  final url=baseURL;
  final dio=Dio();
  Response response;
  response=await dio.get(url+'register');
  if(response.data["status"]==214)
  {
    return response.data["message"];
  }
  else
  {
    return  "Registered";
  }


}