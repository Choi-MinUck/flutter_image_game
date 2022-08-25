import 'package:flutter/material.dart';
import 'package:flutter_image_game/Pages/GameSetPage.dart';
import 'package:flutter_image_game/Pages/CardCategoryLevel.dart';
import 'package:flutter_image_game/Theme/font.dart';
import 'package:flutter_image_game/Pages/CardPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2B2B31),
        body: ListView(
          children: [
            Container(
                height: 120, child: Image.asset('assets/images/브레이-킷.png')),
            Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      homePageDeckButton1(
                        cardCategory: '브레이킷1',
                        miniTitle: '이 얼음 같은 분위기… 깨고 싶다 브레이킷 브레이킷',
                        cardPageTitle: '브레이킷1',
                      ),
                      homePageDeckButton1(
                        cardCategory: '브레이킷2',
                        miniTitle: '얼음은 다 녹았다!! 신나게 즐겨볼까?',
                        cardPageTitle: '브레이킷2',
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      homePageDeckButton1(
                        cardCategory: '대학생활',
                        miniTitle: '아무리 학생 때가 행복하다지만, 종강 마렵다…',
                        cardPageTitle: '대학생활',
                      ),
                      homePageDeckButton1(
                        cardCategory: '연애생활',
                        miniTitle: '이 사람이 연애를 한다면?\n근데 너 연애 해봤니…?',
                        cardPageTitle: '연애생활',
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      homePageDeckButton1(
                        cardCategory: '술과 함께1',
                        miniTitle: '술자리가 허전할 때 술안주로 딱!',
                        cardPageTitle: '술과 함께1',
                      ),
                      homePageDeckButton1(
                        cardCategory: '술과 함께2',
                        miniTitle: '사장님! 여기 소주 3병 추가요',
                        cardPageTitle: '술과 함께2',
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      homePageDeckButton1(
                        cardCategory: '조선시대',
                        miniTitle: '백 투 더 조선! 조선시대에 태어났다면?',
                        cardPageTitle: '조선시대에 태어났다면?',
                      ),
                      homePageDeckButton1(
                        cardCategory: '동화',
                        miniTitle: '유명 동화의 주인공이 된다면? 그런데 동화 내용이 좀 이상하다…!',
                        cardPageTitle: '유명 동화의 주인공이 된다면?',
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                ],
              ),
            ),
          ],
        ));
  }
}

class homePageDeckButton1 extends StatelessWidget {
  homePageDeckButton1(
      {Key? key,
      required this.cardCategory,
      required this.miniTitle,
      required this.cardPageTitle})
      : super(key: key);

  String cardCategory;
  String miniTitle;
  String cardPageTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          SizedBox(
            width: 160,
            height: 240,
            child: Stack(
              children: [
                Ink.image(
                    image: AssetImage('assets/images/homePageDeck.png'),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CardCategoryLevel(
                                    cardCategory: this.cardCategory,
                                    miniTitle: this.miniTitle,
                                    cardPageTitle: this.cardPageTitle,
                                  )),
                        );
                      },
                    ),
                    fit: BoxFit.fill),
                Column(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Center(
                          child: Text(
                            cardCategory,
                            textAlign: TextAlign.center,
                            style: homePageDeck(),
                          ),
                        )),
                    Expanded(flex: 1, child: Container())
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
