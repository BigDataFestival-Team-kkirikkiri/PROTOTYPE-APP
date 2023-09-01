import 'package:flutter/material.dart';
import 'package:prototype/screens/main_screen.dart';
import 'package:prototype/widgets/common/text_widget.dart';
import 'package:prototype/widgets/common/text_widget_center.dart';
import 'package:prototype/widgets/modal_title/quiz_title.dart';

class QuizModal extends StatelessWidget {
  const QuizModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 2000,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Column(
              children: [
                const TextWidget(
                    text: "2023년 7월 20일",
                    textColor: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300),
                const QuizTitle(
                    title1: "일간 퀴즈",
                    fontSize: 20,
                    colorTitle: " 정답",
                    color: Colors.orange),
                const SizedBox(height: 5),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                        text: "Mstock",
                        textColor: Colors.orange,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    TextWidget(
                        text: " AI의 예측을 따르면,",
                        textColor: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)
                  ],
                ),
                // const Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     textWidget(
                //         text: "'하이브'의 주가는",
                //         textColor: Colors.white,
                //         fontSize: 18,
                //         fontWeight: FontWeight.bold),
                //   ],
                // ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                        text: "'하이브'의 주가는 ",
                        textColor: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    TextWidget(
                        text: "상승",
                        textColor: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    TextWidget(
                        text: "할 것으로 보입니다.",
                        textColor: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  width: 210,
                  decoration: BoxDecoration(
                      color: Colors.lime[900],
                      borderRadius: BorderRadius.circular(2)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                          text: "#뉴진스",
                          textColor: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                      TextWidget(
                          text: " #Super Shy",
                          textColor: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                      TextWidget(
                          text: " #컴백",
                          textColor: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 350,
                  padding:
                      const EdgeInsets.symmetric(vertical: 17, horizontal: 15),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(7),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage('images/hybe.png'),
                          ),
                          SizedBox(width: 10),
                          TextWidget(
                              text: "'하이브'의 예상되는 내일 주가는",
                              textColor: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)
                        ],
                      ),
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
                            child: const Text(
                              "+ 3.44%",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const TextWidgetCenter(
                    text: "'나의 관심 종목 위험도 평가'와 '나의 주식 성장단계'를",
                    textColor: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w300),
                const TextWidgetCenter(
                    text: "알아보고 싶다면 자세히보기를 눌러보세요.",
                    textColor: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w300),
                const SizedBox(height: 10),
                const TextWidget(
                    text: "- 본 서비스는 당사 데이터를 기반으로 Mstock AI를 통해 계산된 예측값을 제공합니다.",
                    textColor: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
                const TextWidget(
                    text: "- 주간 퀴즈의 종목은 고객님의 관심종목 리스트를 기반으로 선정됩니다.",
                    textColor: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
                const TextWidget(
                    text: "- 이 정보는 참고용이며, 투자에 대한 책임은 본인에게 있습니다.",
                    textColor: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
                const SizedBox(height: 8),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainService(),
                          ),
                        ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      child: const TextWidgetCenter(
                          text: "자세히 보기",
                          textColor: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ColorExplain extends StatelessWidget {
  final Color color;
  final String title;
  final String content;

  const ColorExplain({
    super.key,
    required this.color,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.circle, color: color, size: 15),
        const SizedBox(width: 10),
        TextWidget(
            text: title,
            textColor: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w600),
        const SizedBox(width: 10),
        const Icon(Icons.arrow_forward, size: 18, color: Colors.white),
        const SizedBox(width: 10),
        TextWidget(
            text: content,
            textColor: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w600)
      ],
    );
  }
}
