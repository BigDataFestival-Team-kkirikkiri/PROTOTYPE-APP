import 'package:flutter/material.dart';
import 'package:prototype/widgets/common/containerSpace.dart';
import 'package:prototype/widgets/common/content_color_between.dart';
import 'package:prototype/widgets/common/more.dart';
import 'package:prototype/widgets/common/new_text.dart';
import 'package:prototype/widgets/modal_title/danger_title.dart';
import 'package:prototype/widgets/modal_title/pattern_title.dart';
import 'package:prototype/widgets/modal_title/rank_title.dart';
import 'package:prototype/widgets/service/danger.dart';
import 'package:prototype/widgets/service/pattern.dart';
import 'package:prototype/widgets/service/people_list.dart';
import 'package:prototype/widgets/service/people_list_me.dart';
import 'package:prototype/widgets/service/people_list_top.dart';
import 'package:prototype/widgets/service/rank_chart.dart';
import 'package:prototype/widgets/title/title_color_between_no_icon.dart';

class MainService extends StatelessWidget {
  const MainService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Main Service'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: 20,
            ),
            Column(
              children: [
                Container(
                  color: Colors.black,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DangerTitle(title1: "나의 관심 종목 위험도 평가", fontSize: 20),
                      MoreWidget(content: "더보기", fontSize: 15),
                    ],
                  ),
                ),
              ],
            ),
            const DangerWidget(
                bgColor: Colors.black,
                entColor: Colors.white,
                stockColor: Colors.red,
                stockRateColor: Colors.red,
                stockRateBgColor: Colors.red,
                allfontSize: 16,
                iconColor: Colors.blue,
                iconSize: 15,
                entName: "하이브",
                stockName: "272,084",
                stockRate: "+ 0.40%"),
            const DangerWidget(
                bgColor: Colors.black,
                entColor: Colors.white,
                stockColor: Colors.red,
                stockRateColor: Colors.red,
                stockRateBgColor: Colors.red,
                allfontSize: 16,
                iconColor: Colors.yellow,
                iconSize: 15,
                entName: "JYP Ent.",
                stockName: "201.344",
                stockRate: "+ 0.70%"),
            const DangerWidget(
                bgColor: Colors.black,
                entColor: Colors.white,
                stockColor: Colors.red,
                stockRateColor: Colors.blue,
                stockRateBgColor: Colors.blue,
                allfontSize: 16,
                iconSize: 15,
                iconColor: Colors.red,
                entName: "에스엠",
                stockName: "183,010",
                stockRate: "- 0.40%"),
            const DangerWidget(
                bgColor: Colors.black,
                entColor: Colors.white,
                stockColor: Colors.red,
                stockRateColor: Colors.red,
                stockRateBgColor: Colors.red,
                allfontSize: 16,
                iconSize: 15,
                iconColor: Colors.blue,
                entName: "와이지엔터테인먼트",
                stockName: "187,951",
                stockRate: "+ 0.61%"),
            const ContainerSpace(spaceHeight: 4.5),
            const PatternTitle(
                title1: "나의 주식",
                color: Colors.orange,
                colorTitle: " 투자 유형",
                title2: "은?",
                fontSize: 20),
            const PatternWidget(
                title: "라이트급 마라토너",
                titleSize: 15,
                semiTitle: "적은 시드머니를 이용한 장기 투자를 선호합니다.",
                semiTitleSize: 11,
                content1: "단기 고수익 투자와 같은 모험을 즐기기보다",
                content2: "안정적인 투자를 자향하는 투자 유형입니다.",
                contentSize: 11),
            const SizedBox(height: 20),
            const titleColorBetweenNoIcon(
                title1: "나와 같은 유형의 ",
                colorTitle: "능력자",
                color: Colors.orange,
                title2: "들 둘러보기",
                fontSize: 20),
            const ContentColorBetween(
                title1: "같은 유형이지만",
                colorTitle: " 더 높은 수익률",
                color: Colors.orange,
                title2: "을 가진 사람들의 선택은 어떨까요?",
                fontSize: 13),
            const PeopleListTop(
              fontSize: 12,
            ),
            const PeopleList(
                rank: "1",
                rateOfReturn: "120.19%",
                name: "엔비디아",
                rate: "+ 0.48%",
                fontSize: 13,
                iconColor: Colors.yellow,
                rateColor: Colors.red,
                containerColor: Colors.red),
            const PeopleList(
                rank: "2",
                rateOfReturn: "117.23%",
                name: "LG화학",
                rate: "+ 1.68%",
                fontSize: 13,
                iconColor: Colors.blue,
                rateColor: Colors.red,
                containerColor: Colors.red),
            const PeopleList(
                rank: "3",
                rateOfReturn: "114.08%",
                name: "SM C&C",
                rate: "- 0.21%",
                fontSize: 13,
                iconColor: Colors.yellow,
                rateColor: Colors.blue,
                containerColor: Colors.blue),
            const PeopleList(
                rank: "4",
                rateOfReturn: "107.09%",
                name: "SK하이닉스",
                rate: "- 0.53%",
                fontSize: 13,
                iconColor: Colors.yellow,
                rateColor: Colors.blue,
                containerColor: Colors.blue),
            const PeopleList(
                rank: "5",
                rateOfReturn: "102.36%",
                name: "셀트리온",
                rate: "- 1.97%",
                fontSize: 13,
                iconColor: Colors.red,
                rateColor: Colors.blue,
                containerColor: Colors.blue),
            const PeopleList(
                rank: "6",
                rateOfReturn: "99.83%",
                name: "POSCO홀딩스",
                rate: "+ 2.49%",
                fontSize: 13,
                iconColor: Colors.blue,
                rateColor: Colors.red,
                containerColor: Colors.red),
            const PeopleListMe(
                rank: "상위 42%",
                rateOfReturn: "32.01%",
                name: "하이브",
                rate: "+ 3.44%",
                fontSize: 13,
                iconColor: Colors.blue,
                rateColor: Colors.red,
                containerColor: Colors.red),
            const ContainerSpace(spaceHeight: 4.5),
            const RankTitle(
                title1: "나의",
                fontSize: 20,
                colorTitle: "수익률 랭킹",
                color: Colors.orange),
            const NewTextWidget(
                title: "그동안의 나의 주식 성장 단계를 그래프로 보여드릴게요", fontSize: 13),
            const NewTextWidget(
                title: "나의 성장 단계를 통해서 현재 상황을 점검 하세요.", fontSize: 13),
            const RankChart(),
          ],
        ),
      ),
    );
  }
}
