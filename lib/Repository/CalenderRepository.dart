import 'dart:convert';

import 'package:itimaat/Models/add_to_favorite_response_model.dart';
import 'package:itimaat/Models/add_to_favourite_request_model.dart';
import 'package:itimaat/Models/calender_response_model.dart';
import 'package:itimaat/Models/dashboard_response_model.dart';
import 'package:itimaat/Models/favourite_response_model.dart';
import 'package:itimaat/Models/libary_response_model.dart';
import 'package:itimaat/Models/my_library_response_model.dart';
import 'package:itimaat/network/end_points.dart';
import 'package:itimaat/network/remote/dio_helper.dart';
import 'package:http/http.dart' as http;

import '../Utils/Constants.dart';


class CalenderRepository {
  DioHelper _helper = DioHelper();

  Future<CalenderResponseModel> getCalennder(String baseUrl ,String token,String date) async {
    var response ;
    print("tokenIs>>>>"+token);
    try{
      // response = await DioHelper.getWithToken(baseUrl,token,Constants.CALENDER+"?date="+date);
      response = await DioHelper.getWithToken(baseUrl,token,Constants.CALENDER);
      print("ResponsIS>>"+response.toString());
    }catch (e){
      print("kkkkkkkkkkkkkk"+e.toString());
    }
    // print("current_memberIS>>"+response['ongoing'].toString());
    // return DashboardResponseModel.fromJson(response);
    return response==null?null:CalenderResponseModel.fromJson(response);
  }

}
