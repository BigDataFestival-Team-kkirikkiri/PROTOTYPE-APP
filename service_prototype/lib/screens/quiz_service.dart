import 'dart:async';
import 'package:flutter/material.dart';
import 'package:prototype/widgets/common/space.dart';
import 'package:prototype/widgets/common/text_widget.dart';
import 'package:prototype/widgets/modal_content/quiz_modal.dart';
import 'package:intl/intl.dart';

class QuizService extends StatefulWidget {
  const QuizService({Key? key}) : super(key: key);

  @override
  State<QuizService> createState() => _QuizServiceState();
}

class _QuizServiceState extends State<QuizService> {
  late Timer timer;
  bool isRunning = false;
  int totalSeconds = 24 * 60 * 60;

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
    setState(() {
      if (isRunning && totalSeconds > 0) {
        totalSeconds = totalSeconds - 1;
      }
    });
  }

  final String now = DateTime.now().toString();
  String formattedDate = DateFormat('yyyy년MM월dd일').format(DateTime.now());
  String formattedTime = DateFormat('[ kk:mm ]').format(DateTime.now());

  String getFormattedTime() {
    final hours = totalSeconds ~/ 3600;
    final minutes = (totalSeconds ~/ 60) % 60;
    final seconds = totalSeconds % 60;
    return '$hours:${minutes.toString().padLeft(2, '0')}';
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split(".").first;
  }

  void showQuizDialog(BuildContext context) {
    showDialog(
      context: context,
      // barrierDismissible: false, // Dialog를 탭하여 닫을 수 없도록 설정
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Column(
              children: [
                const SpaceWidget(spaceHeight: 170, spaceWidth: 100),
                AlertDialog(
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
                              text: getFormattedTime(),
                              textColor: Colors.orange,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ],
                      ),
                      TextWidget(
                          text: formattedDate,
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
                                    side:
                                        const BorderSide(color: Colors.orange),
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  Navigator.of(context).pop('하락 선택');
                                  showModalBottomSheet(
                                    backgroundColor:
                                        Colors.white.withOpacity(0),
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
                                    side:
                                        const BorderSide(color: Colors.orange),
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  Navigator.of(context).pop('하락 선택');
                                  showModalBottomSheet(
                                    backgroundColor:
                                        Colors.white.withOpacity(0),
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
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text('Quiz Service'),
      //   backgroundColor: Colors.black,
      //   foregroundColor: Colors.white,
      //   elevation: 2,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   decoration: const BoxDecoration(
            //     image: DecorationImage(
            //         image: AssetImage('images/background.jpg'),
            //         fit: BoxFit.cover),
            //   ),
            // ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/background.jpg'),
                    fit: BoxFit.cover),
              ),
              height: 1000,
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black.withOpacity(0),
                  ),
                  child: Text('퀴즈 시작하기',
                      style: TextStyle(
                        color: Colors.black.withOpacity(1),
                      )),
                  onPressed: () {
                    onStartPressed();
                    showQuizDialog(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onStartPressed() {
    setState(() {
      isRunning = true;
    });
  }
}
