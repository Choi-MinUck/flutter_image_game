import 'package:flutter/material.dart';
import 'package:flutter_image_game/Theme/font.dart';
import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_image_game/main.dart';
import 'package:wrapped_korean_text/wrapped_korean_text.dart';

class CardPage extends StatefulWidget {
  const CardPage(
      {Key? key, required this.deckIndex, required this.cardCategory})
      : super(key: key);
  final int deckIndex;
  final String cardCategory;

  State<CardPage> createState() => _CardPageState(
      deckIndex: this.deckIndex, cardCategory: this.cardCategory);
}

class _CardPageState extends State<CardPage> {
  _CardPageState(
      {Key? key, required this.deckIndex, required this.cardCategory});

  final AppinioSwiperController controller = AppinioSwiperController();
  late int deckIndex;
  late String cardCategory;

  late List<List<Widget>> Break_It_1 = [
    Break_It_1_1,
    Break_It_1_2,
    Break_It_1_3,
  ];

  late List<List<Widget>> Break_It_2 = [
    Break_It_2_1,
    Break_It_2_2,
    Break_It_2_3,
  ];

  List<Widget> Break_It_1_1 = [
    CardDeckButton3('10', '‘13회 OO중학교 동창회 기념’ 같은 문구 적혀있는 수건 절대 안 쓸 것 같은 사람'),
    CardDeckButton3('9', '누가 부르는 데 에어팟 끼고 안 들리는 척할 것 같은 사람'),
    CardDeckButton3('8', '가게에서 나갈 때 꼭 감사합니다 인사할 것 같은 사람'),
    CardDeckButton3('7', '동창회에서 만났는데 몰라보게 달라졌을 것 같은 사람'),
    CardDeckButton3('6', '혼자서 유튜브 보며 낄낄거리다가 화면에 비친 자기 모습을 보고 현타올 것 같은 사람'),
    CardDeckButton3('5', '다이어트 때 대리만족 한답시고 먹방 보다가 새벽에 라면 끓여 먹을 것 같은 사람 '),
    CardDeckButton3('4', '고등학교 때 맞춘 반티 아직도 입고 다닐 것 같은 사람'),
    CardDeckButton3('3', '머릿 속 지식 절반의 출처가 나무위키일 것 같은 사람 '),
    CardDeckButton3('2', '클래식 들으면서 아메리카노 한 잔과 함께 아침을 시작할 것 같은 사람 '),
    CardDeckButton3('1', '샤워할 때 코인노래방인 것 마냥 눈물 쏟는 발라드 부를 것 같은 사람'),
  ];

//브레이-킷 1_2
  List<Widget> Break_It_1_2 = [
    CardDeckButton3('10', '좋아하는 연예인 생일 때 팬카페 열어서 직접 만든 굿즈 판매할 것 같은 사람'),
    CardDeckButton3('9', '화장실을 갔는데 거울에 손자국 있으면 거슬려서 꼭 닦고 나올 것 같은 사람'),
    CardDeckButton3('8', '감자 껍질 벗기다가 귀찮아서 그냥 요리에 사용할 것 같은 사람'),
    CardDeckButton3('7', '비가 왔는데 우산이 없어도 느긋하게 걸어갈 것 같은 사람'),
    CardDeckButton3('6', '씽씽이 타는데 보호장구 풀착장하고 탈 것 같은 사람'),
    CardDeckButton3('5', '방귀 뀌고 나 아닌데 할 것 같은 사람'),
    CardDeckButton3('4', '복권 당첨 문자가 와도 3일 후에 확인할 것 같은 사람'),
    CardDeckButton3('3', '샤워하며 생각 정리를 할 것 같은 사람'),
    CardDeckButton3('2', '마트에서 가격표도 안 보고 물건 담을 것 같은 사람'),
    CardDeckButton3('1', '버스에서 거스름돈을 200원 더 받아도 그냥 가져갈 것 같은 사람'),
  ];

//브레이-킷 1_3
  List<Widget> Break_It_1_3 = [
    CardDeckButton3('10', '땅바닥에 과자 떨어뜨리면 3초 안 됐다며 주워 먹을 것 같은 사람'),
    CardDeckButton3('9', '이 3초를 세줄 것 같은 사람'),
    CardDeckButton3('8', '3초 이미 지났다며 딴지 걸 것 같은 사람'),
    CardDeckButton3('7', '길 가다가 5만 원 주우면 주변을 살피고 자기 주머니 속에 넣을 것 같은 사람'),
    CardDeckButton3('6', '사람 많은 지하철에서 은근한 몸싸움을 할 것 같은 사람'),
    CardDeckButton3('5', '집에 건담로봇 조립해서 시리즈별로 전시해두었을 것 같은 사람'),
    CardDeckButton3('4', '전생에 돌멩이였을 것 같은 사람'),
    CardDeckButton3('3', '샴푸 브랜드에 민감할 것 같은 사람'),
    CardDeckButton3('2', '기사님이 문을 제때 열어주지 않으면 말없이 다음 정거장에 내릴 것 같은 사람'),
    CardDeckButton3('1', '온갖 혜택과 쿠폰을 알아 와서 영화를 반값에 볼 것 같은 사람'),
  ];

//브레이-킷 2_1
  List<Widget> Break_It_2_1 = [
    CardDeckButton3('10', '엄마 몰래 김치찌개에 있는 돼지고기만 건져 먹을 것 같은 사람'),
    CardDeckButton3('9', '여사친, 남사친 깻잎 떼줄 것 같은 사람'),
    CardDeckButton3('8', '길 가다가 번호 따여봤을 것 같은 사람'),
    CardDeckButton3('7', '학창 시절 두발 자유화 시위를 했을 것 같은 사람'),
    CardDeckButton3('6', '여사친/남사친한테 고백했다가 차여서 친구인 척 지내고 있을 것 같은 사람'),
    CardDeckButton3('5', '유튜브 시청 목록을 절대 공개하지 못할 것 같은 사람'),
    CardDeckButton3('4', '더치페이할 때 가장 돈을 늦게 보낼 것 같은 사람'),
    CardDeckButton3('3', '컴퓨터 타자 칠 때 손가락 두 개만 쓸 것 같은 사람'),
    CardDeckButton3('2', 'MBTI 맹신론자일 것 같은 사람'),
    CardDeckButton3('1', '장수해서 3세기를 살 것 같은 사람'),
  ];

//브레이-킷 2_2
  List<Widget> Break_It_2_2 = [
    CardDeckButton3('10', '랜덤게임하면 물 만난 물고기일 것 같은 사람'),
    CardDeckButton3('9', '한 때 유튜브 스트리머를 했지만 월 수익이 560원이었을 것 같은 사람'),
    CardDeckButton3('8', '학창시절 교복 반 체육복 반 스타일을 고수했을 것 같은 사람'),
    CardDeckButton3('7', '차가 없어도 초록 불이 될 때까지 기다렸다가 갈 것 같은 사람'),
    CardDeckButton3('6', '쌩쌩 지나치는 차 사이로 요리조리 무단횡단 할 것 같은 사람'),
    CardDeckButton3('5', '도를 아십니까를 따라가서 제사 지내고 올 것 같은 사람'),
    CardDeckButton3('4', '학창 시절 선도부였을 것 같은 사람'),
    CardDeckButton3('3', '결혼식에 친구가 바글바글할 것 같은 사람'),
    CardDeckButton3('2', '미국 하이틴 영화에서 악역의 왼쪽 자리에서 기강 잡았을 것 같은 사람'),
    CardDeckButton3('1', '정산할 때 소수점 자리까지 계산해서 돈 보내라고 할 것 같은 사람'),
  ];

//브레이-킷 2_3
  List<Widget> Break_It_2_3 = [
    CardDeckButton3('10', '문구점에서 온갖 불량식품을 다 먹어봤을 것 같은 사람'),
    CardDeckButton3('9', '학창 시절 인기 하나로 학생회장 당선됐을 것 같은 사람'),
    CardDeckButton3('8', '사이비 종교에 빠져 인생의 절반을 허비하고 말 것 같은 사람'),
    CardDeckButton3('7', '눈싸움하다가 얼굴에 눈 맞으면 바로 엄마 불렀을 것 같은 사람'),
    CardDeckButton3('6', '식당에서 음식물은 음식물끼리, 그릇은 그릇끼리 다 정리 해놓고 나갈 것 같은 사람'),
    CardDeckButton3('5', '함께 노래방을 가면 반전의 모습을 보여줄 것 같은 사람'),
    CardDeckButton3('4', '예능 프로그램 방청객 하면 누구보다 크게 웃어줄 것 같은 사람'),
    CardDeckButton3('3', '초등학교 시절 짝꿍한테 넘어오지 말라고 으름장을 놓았을 것 같은 사람'),
    CardDeckButton3('2', '중세 시대에 태어났더라면 왕가 귀족이었을 것 같은 사람'),
    CardDeckButton3('1', '이성보다 동성에게 더 인기 많았을 것 같은 사람'),
  ];

  List<Widget> setDeck(String cardCategory) {
    if (cardCategory == '브레이킷1' && deckIndex == 0) {
      return Break_It_1[deckIndex];
    } else if (cardCategory == '브레이킷1' && deckIndex == 1) {
      return Break_It_1[deckIndex];
    } else if (cardCategory == '브레이킷1' && deckIndex == 2) {
      return Break_It_1[deckIndex];
    } else if (cardCategory == '브레이킷2' && deckIndex == 0) {
      return Break_It_2[deckIndex];
    } else if (cardCategory == '브레이킷2' && deckIndex == 1) {
      return Break_It_2[deckIndex];
    } else if (cardCategory == '브레이킷2' && deckIndex == 1) {
      return Break_It_2[deckIndex];
    } else {
      return Break_It_1_1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B2B31),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => new MyHome()),
                  );
                },
                child: Image.asset('assets/images/exitButton.png')),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$cardCategory-${deckIndex + 1}',
                style: cafe24w700White(24, 36),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              CardEnd(),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: Center(
                    child: AppinioSwiper(
                      controller: controller,
                      cards: setDeck(cardCategory),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                    ),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CupertinoButton(
                child: Image.asset('assets/images/unswipe.png'),
                onPressed: () => controller.unswipe(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget CardEnd() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.75,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Stack(
          children: [
            SizedBox(
              width: 336,
              height: 520,
              child: Stack(
                children: [
                  Image.asset('assets/images/cardEnd.png'),
                  Column(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(25),
                        child: Text(
                          '게임종료',
                          textAlign: TextAlign.center,
                          style: cardEndText(),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyHome()),
                              );
                            },
                            child: Text(
                              '홈으로 돌아가기',
                              textAlign: TextAlign.center,
                              style: cardText(),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget CardDeckButton3(String index, String cardContent) {
  String cardPath = 'assets/images/card.png';

  return Container(
    child: Stack(
      children: [
        SizedBox(
          width: 336,
          height: 520,
          child: Stack(
            children: [
              Image.asset(cardPath),
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.all(20),
                child: Text(
                  '$index / 10장',
                  textAlign: TextAlign.center,
                  style: cardText(),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(40),
                child: Text(
                  cardContent,
                  textAlign: TextAlign.center,
                  style: cardText(),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
