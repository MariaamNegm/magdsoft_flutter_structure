import 'package:dio/dio.dart';

import '../../../constants/end_points.dart';
import '../../models/account_model.dart';

Future<String?> log_in()async{
  final url=baseURL;
  final dio=Dio();
  Response response;
  response=await dio.get(url+'login');
  if(response.data["status"]==404)
  {
    return response.data["message"];
  }
  else
  {
    return  "loggedIn";
  }


}