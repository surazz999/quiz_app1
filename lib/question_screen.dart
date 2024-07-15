import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            answerText: currentQuestion.answers[0],
            ontap: () {},
          ),
          AnswerButton(
            answerText: currentQuestion.answers[1],
            ontap: () {},
          ),
          AnswerButton(
            answerText: currentQuestion.answers[2],
            ontap: () {},
          ),
          AnswerButton(
            answerText: currentQuestion.answers[3],
            ontap: () {},
          ),
        ],
      ),
    );
  }
}
