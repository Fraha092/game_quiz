import 'package:flutter/material.dart';
import 'package:game_quiz/Controller/QuizController.dart';
import 'package:game_quiz/Model/Model.dart';
import 'package:get/get.dart';

class QuestionAnswerPage extends StatefulWidget {
  const QuestionAnswerPage({Key? key}) : super(key: key);

  @override
  State<QuestionAnswerPage> createState() => _QuestionAnswerPageState();
}

class _QuestionAnswerPageState extends State<QuestionAnswerPage> {
 // late Future<questions> futureAlbum;
  int index = 0;
  int score = 0;
  var controller = Get.put(QuizController());
  @override
  void initState(){
    super.initState();
   // futureAlbum = getallquestions();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // toolbarHeight: 70,
        backgroundColor: Color(0xFF101721),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text("Quiz")),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(child: Obx((){
              return
                //   controller.postloading.value?
                // Center(child: CircularProgressIndicator(),):
                ListView.builder(itemCount: controller.getposts.value.questionss?.length,
                    itemBuilder: (context,index){
                      var item = controller.getposts.value.questionss?[index];
                      return
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children:<Widget> [
                              Row(children: [
                                Container(
                                    padding:EdgeInsets.only(left: 53,top: 30),
                                    child: Text('Question: /8',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                                Container(
                                    padding:EdgeInsets.only(left: 80,top: 30),
                                    child: Text('Score: ${score}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                              ],),
                              SizedBox(height: 20,),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(6)),
                                  color:Color(0xFF101721), ),
                                // color: Color(0xFFB3F5F0),
                                height: 350,
                                width: 330,
                                child: Card(
                                  child: Column(
                                    children: [
                                      Text('$score Point',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),

                                      SizedBox(height: 5,
                                      child: Container(
                                        height: 20,width: 20,child:
                                      Text(item?.questionImageUrl ?? 'Null'
                                      ),
                                      ),
                                      ),
                                     // Image.network(item?.questionImageUrl ?? 'Null'),
                                      SizedBox(height: 5,),
                                      Text("${item?.question ?? ''}")
                                     // Text("${item?.question![index]}")
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 25,),
                              Column(
                                children: <Widget>[
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(6)),
                                        color:Color(0xFF101721), ),
                                      // color: Color(0xFFB3F5F0),
                                      height: 40,
                                      width: 320,
                                      child: Text('')),
                                  SizedBox(height: 10,),
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(6)),
                                        color:Color(0xFF101721), ),
                                      height: 40,
                                      width: 320,
                                      child: Text('')),
                                  SizedBox(height: 10,),
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(6)),
                                        color:Color(0xFF101721), ),
                                      height: 40,
                                      width: 320,
                                      child: Text('')),
                                  SizedBox(height: 10,),
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(6)),
                                        color:Color(0xFF101721), ),
                                      height: 40,
                                      width: 320,
                                      child: Text('')),
                                ],
                              )
                            ],
                          ),
                        );
                    });
            },
            ),
            )],
        ),
      )

    );
  }
}
