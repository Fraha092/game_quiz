import 'dart:async';
import '../Model/Model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Services{
  Future<questions>getallquestions()async{
    questions questionsModel= questions();
    String url="https://herosapp.nyc3.digitaloceanspaces.com/quiz.json";
    try{
      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10),onTimeout: (){
        throw TimeoutException("Connection Time Out try again");
      });
      if(response.statusCode==200){
        final Map<String, dynamic>parsed=convert.jsonDecode(response.body);
        questionsModel=questions.fromJson(parsed);
        return questionsModel;
      }
      else{
        return questionsModel;
      }
    }
    on TimeoutException catch(_){
      print("Response time out.");
    }
    return questionsModel;
  }
}