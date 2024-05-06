import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apex_academia/Apis&URLs/Url.dart';
import 'package:flutter_apex_academia/ModelClasses/StudentLoginModel.dart';
import 'package:flutter_apex_academia/ModelClasses/StudentPersonalinfo.dart';
import 'package:flutter_apex_academia/Student/Student_homepage.dart';

class Apiclass{
  static Apiclass instance=Apiclass();
  factory(){
    return instance;
  }
  final dio=Dio();
  final url=URL();
  Apiclass(){
    dio.options=BaseOptions(baseUrl: url.BaseUrl,responseType: ResponseType.json);
  }
  Future<StudentLoginModel?>StudentLoginApi(FormData formData)async{
    try{
      final result=await dio.post(url.StudentLoginpageUrl,data: formData);
     print("ffffffffffffffffffffffffffffffffffffffffffffffffffffffff$result");

      return StudentLoginModel.fromJson(result.data);

    }
    on DioException catch (e){
      print(e);
    }
    catch(e){
      print(e);
    }
  }
  Future<List>StudentProfile() async{
     try {
    final result = await dio.get(url.BaseUrl + url.StudentProfileUrl);
    print("API Response: $result");
    
    // Assuming the data is a list of items and you need the first one
    List<dynamic> data = result.data;
    print("qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq $data");
    return data;
   
    if (data.isNotEmpty) {
     // return personalmodel.fromJson(data[0] as Map<dynamic, dynamic>);
     // print("ddddddddddddddddddddddddddddddd ${personalmodel.fromJson(data[0] as Map<dynamic, dynamic>)}");
    } else {
      throw Exception("Received empty list from server");
    }
  } on DioException catch (e) {
    print("DioException caught: $e");
    rethrow;
  } catch (e) {
    print("Exception caught: $e");
    rethrow;
  }
    // final result=await dio.get(url.BaseUrl+url.StudentProfileUrl);
    // print("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh$result");
    // return personalmodel.fromJson(result.data as Map) ;
  }
  

}