import 'package:flutter/material.dart';
import 'package:prototype/widgets/common/text_widget.dart';
import 'package:prototype/widgets/modal_content/title_color_between_no_icon_no_padding.dart';

class dangerModal extends StatelessWidget {
  const dangerModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 300,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: const Column(
        children: [
          SizedBox(height: 10),
          titleColorBetweenNoIconNoPadding(
              title1: "나의 관심",
              colorTitle: " 종목 위험도",
              color: Colors.orange,
              title2: " 평가는 ?",
              fontSize: 20),
          SizedBox(height: 15),
          textWidget(
              text: "사용자가 관심있어하는 종목에 대해서 AI 알고리즘으로",
              textColor: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w500),
          textWidget(
              text: "위험도를 예측하여 투자에 도움을 드릴게요",
              textColor: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w500),
          SizedBox(
            height: 10,
          ),
          textWidget(
              text: "미래에셋 AI알고리즘은 향후 주가를 예측하고 위험도를 나누어",
              textColor: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w500),
          textWidget(
              text: "색으로 쉽게 보여드립니다.",
              textColor: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w500),
          SizedBox(height: 20),
          colorExplain(
              color: Colors.blue, title: "안전", content: "좋은 전망이 기대됩니다 !"),
          SizedBox(height: 10),
          colorExplain(
              color: Colors.yellow,
              title: "보통",
              content: "크게 오르거나 내릴거같지 않아요 !"),
          SizedBox(height: 10),
          colorExplain(
              color: Colors.red, title: "위험", content: "투자에 유의해 주세요 !"),
          SizedBox(height: 20),
          textWidget(
              text: "< AI 알고리즘은 투자에 대한 정답이 아니라 참고용임을 유의해주세요. >",
              textColor: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.w600)
        ],
      ),
    );
  }
}

class colorExplain extends StatelessWidget {
  final Color color;
  final String title;
  final String content;

  const colorExplain({
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
        textWidget(
            text: title,
            textColor: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w600),
        const SizedBox(width: 10),
        const Icon(Icons.arrow_forward, size: 18, color: Colors.white),
        const SizedBox(width: 10),
        textWidget(
            text: content,
            textColor: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w600)
      ],
    );
  }
}
