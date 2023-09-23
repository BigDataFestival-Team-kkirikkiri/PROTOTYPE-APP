import 'package:flutter/material.dart';
import 'package:prototype/widgets/common/text_widget.dart';
import 'package:prototype/widgets/modal_content/title_color_between_no_icon_no_padding.dart';

class DangerRateModal extends StatefulWidget {
  const DangerRateModal({super.key});

  @override
  State<DangerRateModal> createState() => _DangerRateModalState();
}

class _DangerRateModalState extends State<DangerRateModal> {
  int selectedButtonIndex = -1; // 선택된 버튼의 인덱스를 저장할 변수

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 300,
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
          const TitleColorBetweenNoIconNoPadding(
              title1: "나의 관심",
              colorTitle: " 종목 위험도",
              color: Colors.orange,
              title2: " 위험도 설정",
              fontSize: 20),
          const SizedBox(height: 10),
          const TextWidget(
              text: "종목 위험도는 3%, 5%, 10% 로 설정 할 수 있습니다.",
              textColor: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w500),
          const TextWidget(
              text: "사용자가 설정한 퍼센트에 따라서 위험도 평가가 다르게 진행됩니다.",
              textColor: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w500),
          const TextWidget(
              text: "자신의 투자 방식에 맞는 위험도를 설정해주세요.",
              textColor: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w500),
          const SizedBox(
            height: 10,
          ),
          const TextWidget(
              text: "선택하신 위험도보다 높이 오르면 안전, 떨어지면 위험으로 표시되며",
              textColor: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w500),
          const TextWidget(
              text: "그 사이 값은 중간으로 표시됩니다.",
              textColor: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w500),
          const SizedBox(height: 15),
          // 원들을 Row로 묶어서 생성
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildCircularButton(0, "3%"),
              buildCircularButton(1, "5%"),
              buildCircularButton(2, "11%"),
            ],
          ),
        ],
      ),
    );
  }

  // 원을 생성하는 함수
  Widget buildCircularButton(int index, String text) {
    // 버튼이 선택되었는지 확인하여 색상을 설정
    Color buttonColor =
        index == selectedButtonIndex ? Colors.orange : Colors.grey;

    return GestureDetector(
      onTap: () {
        // 버튼이 클릭되면 선택된 버튼의 인덱스를 업데이트
        setState(() {
          selectedButtonIndex = index;
        });
      },
      child: Container(
        width: 85, // 원의 크기 조절
        height: 85, // 원의 크기 조절
        padding: const EdgeInsets.all(5), // 원 내부 여백 설정
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: buttonColor,
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
