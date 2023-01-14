import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'QuestionAnswerPage.dart';

class MainMenuPage extends StatefulWidget {
  const MainMenuPage({Key? key}) : super(key: key);

  @override
  State<MainMenuPage> createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Center(child: const Text("Gorgeous Bangladesh")),
      backgroundColor: Color(0xFF101721),),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("High Score: ", style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
              OutlinedButton(
                child: Text("Start New Game", style: TextStyle(fontSize: 20),),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return QuestionAnswerPage();
                      },
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),

    );
  }
}
