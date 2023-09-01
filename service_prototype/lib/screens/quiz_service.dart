import 'dart:async';
import 'package:flutter/material.dart';
import 'package:prototype/widgets/common/text_widget.dart';
import 'package:prototype/widgets/modal_content/quiz_modal.dart';

class QuizService extends StatefulWidget {
  const QuizService({Key? key}) : super(key: key);

  @override
  State<QuizService> createState() => _QuizServiceState();
}

class _QuizServiceState extends State<QuizService> {
  static const twentyFourHours = 86400;
  int totalSeconds = twentyFourHours;
  late Timer timer;
  bool isRunning = false;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      onTick,
    );
  }

  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        isRunning = false;
        totalSeconds = 86400;
      });
      timer.cancel(); // 타이머 종료
    } else {
      setState(() {
        totalSeconds = totalSeconds - 1;
      });
    }
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split(".").first;
  }

  void showQuizDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Column(
          children: [
            AlertDialog(
              alignment: const Alignment(0, 10),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              backgroundColor: Colors.grey[850],
              title: Column(
                children: [
                  Row(
                    children: [
                      const TextWidget(
                          text: "일간 퀴즈",
                          textColor: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      const SizedBox(width: 10),
                      TextWidget(
                          text: format(totalSeconds),
                          textColor: Colors.orange,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  const TextWidget(
                      text: "2023년 8월 28일",
                      textColor: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w400)
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage('images/hybe.png')),
                      SizedBox(width: 10),
                      TextWidget(
                          text: "'하이브' 의 현재 주가는",
                          textColor: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextWidget(
                          text: "271,000",
                          textColor: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 1, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.red.withOpacity(0.2),
                        ),
                        child: const Text("+ 3.44%",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            TextWidget(
                                text: "Mstock",
                                textColor: Colors.orange,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            TextWidget(
                                text: " AI가 예측한",
                                textColor: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ],
                        ),
                        const TextWidget(
                            text: "내일의 하이브의 주가는 상승할까, 하락할까?",
                            textColor: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 30,
                          width: 300,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.grey[850],
                                side: const BorderSide(color: Colors.orange),
                                foregroundColor: Colors.white),
                            onPressed: () {
                              Navigator.of(context).pop('하락 선택');
                              showModalBottomSheet(
                                backgroundColor: Colors.white.withOpacity(0),
                                context: context,
                                builder: (BuildContext context) {
                                  return const QuizModal();
                                },
                              );
                            },
                            child: const Text('상승'),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 30,
                          width: 300,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.grey[850],
                                side: const BorderSide(color: Colors.orange),
                                foregroundColor: Colors.white),
                            onPressed: () {
                              Navigator.of(context).pop('하락 선택');
                              showModalBottomSheet(
                                backgroundColor: Colors.white.withOpacity(0),
                                context: context,
                                builder: (BuildContext context) {
                                  return const QuizModal();
                                },
                              );
                            },
                            child: const Text('하락'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Quiz Service'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.jpg'),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/background.jpg'),
                  fit: BoxFit.cover),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(),
              child: const Text('퀴즈 시작하기'),
              onPressed: () {
                onStartPressed();
                showQuizDialog(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  void onStartPressed() {
    setState(() {
      isRunning = true;
    });
    startTimer();
  }
}
