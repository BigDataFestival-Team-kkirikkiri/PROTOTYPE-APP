import 'package:flutter/material.dart';
import 'package:prototype/widgets/common/text_widget.dart';
import 'package:prototype/widgets/modal_content/title_color_between_no_icon_no_padding.dart';

class PatternModal extends StatelessWidget {
  const PatternModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 370,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: const Column(
        children: [
          SizedBox(height: 10),
          TitleColorBetweenNoIconNoPadding(
              title1: "나의 주식",
              colorTitle: " 투자유형",
              color: Colors.orange,
              title2: " 이란 ?",
              fontSize: 20),
          SizedBox(height: 10),
          TextWidget(
              text: "미래에셋 M-STOCK 의 AI 서비스는 대고객 데이터를 바탕으로 ",
              textColor: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w600),
          TextWidget(
              text: "비슷한 투자 성향의 사용자 끼리 그룹화 합니다.",
              textColor: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w600),
          SizedBox(height: 10),
          TextWidget(
              text: "그룹 내에서 나의 위치, 상위 투자자들의 정보를 이용해.",
              textColor: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w600),
          TextWidget(
              text: "그룹 리더보드에 이름을 올려보세요 !.",
              textColor: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w600),
          SizedBox(height: 20),
          TextWidget(
              text: "M-STOCK 그룹들",
              textColor: Colors.orange,
              fontSize: 18,
              fontWeight: FontWeight.bold),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('images/light_maratoner.jpg'),
              ),
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('images/light_sprinter.jpg'),
              ),
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('images/heavy_maratoner.jpg'),
              ),
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('images/heavy_sprinter.jpg'),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                  text: "라이트급 마라토너",
                  textColor: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
              TextWidget(
                  text: "라이트급 스프린터",
                  textColor: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
              TextWidget(
                  text: "라이트급 마라토너",
                  textColor: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
              TextWidget(
                  text: "라이트급 스프린터",
                  textColor: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold)
            ],
          )
        ],
      ),
    );
  }
}
