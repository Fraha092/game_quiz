import 'package:get/get.dart';
import 'package:game_quiz/Model/Model.dart';
import 'package:game_quiz/Service/ServicePage.dart';

class QuizController extends GetxController{
  var getposts = questions().obs;
  Services services=Services();
  var postLoading = true.obs;
  @override
  void onInit() {
    callpostmethod();
    super.onInit();
  }
  callpostmethod() async{
    try{
      postLoading.value=true;
      var result = await services.getallquestions();
      if(result!=null){
        getposts.value=result;
      }
      else{
        print("Null");
      }
    }
    finally{
      postLoading.value=false;
    }
    update();
  }
}