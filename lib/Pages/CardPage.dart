import 'package:flutter/material.dart';
import 'package:flutter_image_game/Theme/font.dart';
import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_image_game/main.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  final AppinioSwiperController controller = AppinioSwiperController();

  List<Widget> cards = [
    CardDeckButton3('card', '남들이 모르는 은밀한 취미를 즐길 것 같은 사람은?'),
    CardDeckButton3('card', '다시 태어나면 고양이가 어울릴 것 같은 사람은?'),
    CardDeckButton3('card', '무인도에 포류할 때 동료로 있으면 좋을 것 같은 사람은?'),
    CardDeckButton3('card', '동성이랑 술 제일 안마실 것 같은 사람은?'),
    CardDeckButton3('card', '남사친 , 여사친이랑 제일 친구 못할 것 같은 사람은?'),
    CardDeckButton3('card', '내가 싸워서 이길 수 있을 것 같은 사람은?'),
  ];

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
                    MaterialPageRoute(builder: (context) => MyHome()),
                  );
                },
                child: Image.asset('assets/images/exitButton.png')),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '주제',
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
                      cards: cards,
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
                child: Text(
                  "이전 카드로",
                  style: cardText(),
                ),
                onPressed: () => controller.unswipe(),
              ),
              Text(
                '/${cards.length}',
                style: cardText(),
              )
            ],
          ),
        ],
      ),
    );
  }

  void _swipe(int index) {}

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

Widget CardDeckButton3(String cardName, String cardContent) {
  String cardPath = 'assets/images/${cardName}.png';
  String str = cardContent;

  return Container(
    child: Stack(
      children: [
        SizedBox(
          width: 336,
          height: 520,
          child: Stack(
            children: [
              Image.asset('assets/images/${cardName}.png'),
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
