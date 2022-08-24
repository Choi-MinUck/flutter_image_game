import 'package:flutter/material.dart';
import 'package:flutter_image_game/Theme/font.dart';
import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_image_game/main.dart';
import 'package:flutter_image_game/Pages/CardList.dart';
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

  late List<Widget> cards = setDeck(cardCategory);

  List<Widget> setDeck(String cardCategory) {
    if (cardCategory == '교회') {
      return MeetInChurch;
    } else
      return Break_It[0];
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
                '/10',
                style: cardText(),
              )
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

Widget CardDeckButton3(String cardContent) {
  String cardPath = 'assets/images/card.png';
  String str = cardContent;

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
