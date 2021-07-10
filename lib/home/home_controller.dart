import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
        name: "Sergio Henrique",
        imageUrl:
            "https://avatars.githubusercontent.com/u/54045191?s=400&u=2576ec412dacb8f15eb00b0c335f927f03934f36&v=4");
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
          title: "NLW 5 Fluter",
          questionsAnswered: 1,
          questions: [
            QuestionModel(title: "Está curtindo o Flutter?", answers: [
              AnswerModel(title: "Estou curtindo"),
              AnswerModel(title: "Amando Flutter"),
              AnswerModel(title: "Muito top"),
              AnswerModel(title: "Show de bola", isRight: true)
            ]),
            QuestionModel(title: "Está curtindo o Flutter?", answers: [
              AnswerModel(title: "Estou curtindo"),
              AnswerModel(title: "Amando Flutter"),
              AnswerModel(title: "Muito top"),
              AnswerModel(title: "Show de bola", isRight: true)
            ])
          ],
          image: AppImages.blocks,
          level: Level.facil),
    ];
    state = HomeState.success;
  }
}
