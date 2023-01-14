class questions{
  String? question;
  String? answers;
  String? questionImageUrl;
  String? correctAnswer;
  int? score;
  questions({
    this.question,
   this.answers,
    this.questionImageUrl,
    this.correctAnswer,
    this.score,
  });
  List<questions>? questionss;
  questions.fromJson(Map<String, dynamic>json){
    question=json['question'];
    answers=json['answers'];
    questionImageUrl=json['questionImageUrl'];
    correctAnswer=json['correctAnswer'];
    score=json['score'];
  }
  Map<String, dynamic>toJson(){
    final Map<String, dynamic>data=new Map<String,dynamic>();
    data['question']=this.question;
    data['answers']=this.answers;
    data['questionImageUrl']=this.questionImageUrl;
    data['correctAnswer']=this.correctAnswer;
    data['score']=this.score;
    return data;
  }
}