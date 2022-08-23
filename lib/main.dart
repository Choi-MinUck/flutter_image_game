import 'package:flutter/material.dart';
import 'package:flutter_image_game/Pages/GameSetPage.dart';
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
  List<MyHomePageDeckButton> homePageDeckList = [
    MyHomePageDeckButton(cardName: 'homePageDeck', cardContent: '전체'),
    MyHomePageDeckButton(cardName: 'homePageDeck', cardContent: '랜덤'),
    MyHomePageDeckButton(cardName: 'homePageDeck', cardContent: '연애'),
    MyHomePageDeckButton(cardName: 'homePageDeck', cardContent: '연애2'),
    MyHomePageDeckButton(cardName: 'homePageDeck', cardContent: '교회'),
    MyHomePageDeckButton(cardName: 'homePageDeck', cardContent: '과거'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2B2B31),
        body: ListView(
          children: [
            Container(child: Image.asset('assets/images/브레이-킷.png')),
            Container(
              height: 1000,
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                crossAxisCount: 2,
                childAspectRatio: 160 / 240,
                children: <Widget>[
                  homePageDeckButton1(cardButton: homePageDeckList[0]),
                  homePageDeckButton1(cardButton: homePageDeckList[1]),
                  homePageDeckButton1(cardButton: homePageDeckList[2]),
                  homePageDeckButton1(cardButton: homePageDeckList[3]),
                  homePageDeckButton1(cardButton: homePageDeckList[4]),
                  homePageDeckButton1(cardButton: homePageDeckList[5]),
                ],
              ),
            ),
          ],
        ));
  }
}

class MyHomePageDeckButton {
  const MyHomePageDeckButton(
      {required this.cardName, required this.cardContent});

  final String cardName;
  final String cardContent;
}

class homePageDeckButton1 extends StatelessWidget {
  homePageDeckButton1({Key? key, required this.cardButton}) : super(key: key);
  final MyHomePageDeckButton cardButton;

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
                    image:
                        AssetImage('assets/images/${cardButton.cardName}.png'),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GameSetPage(
                                    cardContent: cardButton.cardContent,
                                  )),
                        );
                      },
                    ),
                    fit: BoxFit.fill),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    cardButton.cardContent,
                    textAlign: TextAlign.center,
                    style: homePageDeck(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
