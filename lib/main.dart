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
                      homePageDeckButton1(cardCategory: '브레이킷1'),
                      homePageDeckButton1(cardCategory: '브레이킷2'),
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      homePageDeckButton1(cardCategory: '대학생활'),
                      homePageDeckButton1(cardCategory: '연애'),
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      homePageDeckButton1(cardCategory: '술자리1'),
                      homePageDeckButton1(cardCategory: '술자리2'),
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      homePageDeckButton1(cardCategory: '조선시대'),
                      homePageDeckButton1(cardCategory: '동화'),
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
  homePageDeckButton1({Key? key, required this.cardCategory}) : super(key: key);

  String cardCategory;

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
                                    cardCategory: cardCategory,
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
