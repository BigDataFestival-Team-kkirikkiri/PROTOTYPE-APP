import 'package:flutter/material.dart';
import 'package:prototype/widgets/common/text_widget.dart';
import 'package:prototype/widgets/modal_content/title_color_start_no_icon_no_padding.dart';

class AlgorithmModal extends StatelessWidget {
  const AlgorithmModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          const TitleColorStartNoIconNoPadding(
              title1: " AI의 주가 예측 알고리즘",
              colorTitle: "Mstock",
              color: Colors.orange,
              fontSize: 18),
          const SizedBox(height: 10),
          const TextWidget(
              text: "고객님의 관심 종목에 대해서 AI알고리즘으로 주가를 예측하여",
              textColor: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w600),
          const TextWidget(
              text: "투자에 도움을 드릴게요.",
              textColor: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w600),
          const SizedBox(height: 10),
          const TextWidget(
              text: "미래에셋의 주가 예측 알고리즘은 다음과 같은 변수들을 기반으로",
              textColor: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w600),
          const TextWidget(
              text: "해당 종목의 향후 주가를 예측합니다.",
              textColor: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w600),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(15)),
                    child: const TextWidget(
                        text: "트렌드 변수",
                        textColor: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 5),
                    width: 100,
                    child: const Column(
                      children: [
                        TextWidget(
                            text: "k-pop 관련 동영상 조회수 및 키워드 검색량 수치 분석",
                            textColor: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold)
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(15)),
                    child: const TextWidget(
                        text: "이벤트 변수",
                        textColor: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 5),
                    width: 100,
                    child: const Column(
                      children: [
                        TextWidget(
                            text: "주가 변동에 영향을 주는 K-POP 이슈 분석",
                            textColor: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold)
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(15)),
                    child: const TextWidget(
                        text: "감성 변수",
                        textColor: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 5),
                    width: 100,
                    child: const Column(
                      children: [
                        TextWidget(
                            text: "K-POP 관련 뉴스데이터를 이용한 감성분석",
                            textColor: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold)
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
