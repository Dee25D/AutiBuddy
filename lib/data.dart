import 'package:autibuddyapp/Question_model.dart';

List<QuestionModel> getQuestions(){

  List<QuestionModel> questions = new List<QuestionModel>();
  QuestionModel questionModel = new QuestionModel();

  //1
  questionModel.setQuestion("This kid is feeling sad");
  questionModel.setAnswer("True");
  questionModel.setImageUrl("https://images.ctfassets.net/9l3tjzgyn9gr/1WS6FVXS9kP0rZDgxxPyJb/89d5169cf9bfb90b16a14f401a8d30ac/crying-kid-sad-upset-sad-child-boy-crying-crying-toddler-child-crying-crying-child-upset-toddler_t20_kRzjpx.jpg");
  questions.add(questionModel);
  questionModel = new QuestionModel();

  //2
  questionModel.setQuestion("This is what happy face look like");
  questionModel.setAnswer("True");
  questionModel.setImageUrl("https://jooinn.com/images/happy-kid-1.jpg");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //3
  questionModel.setQuestion("This boy is angry");
  questionModel.setAnswer("False");
  questionModel.setImageUrl("https://learningtree.com.mt/wp-content/uploads/2016/06/wholchild.jpg");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //4
  questionModel.setQuestion("This boy is confused");
  questionModel.setAnswer("True");
  questionModel.setImageUrl("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-bqXPsKa9q49Wu2Vt6N3ZxXGoTF4xL-qghg&usqp=CAU");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //5
  questionModel.setQuestion("She is so excited");
  questionModel.setAnswer("True");
  questionModel.setImageUrl("https://photo-cdn.icons8.com/assets/previews/693/d0d16c91-6470-4f0d-ab07-1c91374df9311x.jpg");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //6
  questionModel.setQuestion("Mom is angry");
  questionModel.setAnswer("True");
  questionModel.setImageUrl("https://fem-eszuskq0bptlfh8awbb.stackpathdns.com/wp-content/uploads/2017/11/angry-mom-1017.jpg");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //7
  questionModel.setQuestion("This girl is crying");
  questionModel.setAnswer("False");
  questionModel.setImageUrl("https://memegenerator.net/img/images/14871109.jpg");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //8
  questionModel.setQuestion("She is scared");
  questionModel.setAnswer("True");
  questionModel.setImageUrl("https://www.thepragmaticparent.com/wp-content/uploads/2017/11/Scared-of-the-dark-1024x802.jpg");
  questions.add(questionModel);

  questionModel = new QuestionModel();


  return questions;

}