import 'package:flutter/material.dart';
import 'package:flutter_image_game/Theme/font.dart';
import 'package:flutter_image_game/Pages/GameSetPage.dart';
import 'package:flutter_image_game/main.dart';
import 'package:wrapped_korean_text/wrapped_korean_text.dart';

class CardCategoryLevel extends StatefulWidget {
  const CardCategoryLevel(
      {Key? key,
      required this.cardCategory,
      required this.miniTitle,
      required this.cardPageTitle})
      : super(key: key);

  final String cardCategory;
  final String miniTitle;
  final String cardPageTitle;

  State<CardCategoryLevel> createState() => _CardCategoryLevelState(
      cardCategory: this.cardCategory,
      miniTitle: this.miniTitle,
      cardPageTitle: this.cardPageTitle);
}

class _CardCategoryLevelState extends State<CardCategoryLevel> {
  _CardCategoryLevelState(
      {Key? key,
      required this.cardCategory,
      required this.miniTitle,
      required this.cardPageTitle});

  late String cardCategory;
  late String miniTitle;
  late String cardPageTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E23),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    cardCategory,
                    style: cafe24w700White(35, 52.5),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 220,
                    child: Text(
                      miniTitle,
                      style: juaw400CustomColor(16, 24, 0xffFFFFFF),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  CardCategoryButton(
                    cardCategory: this.cardCategory,
                    buttonIndex: '1',
                    cardPageTitle: this.cardPageTitle,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CardCategoryButton(
                    cardCategory: this.cardCategory,
                    buttonIndex: '2',
                    cardPageTitle: this.cardPageTitle,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CardCategoryButton(
                    cardCategory: this.cardCategory,
                    buttonIndex: '3',
                    cardPageTitle: this.cardPageTitle,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CardCategoryButton extends StatelessWidget {
  CardCategoryButton(
      {Key? key,
      required this.cardCategory,
      required this.buttonIndex,
      required this.cardPageTitle})
      : super(key: key);

  final String cardCategory;
  final String buttonIndex;
  late int deckIndex = int.parse(buttonIndex) - 1;
  final String cardPageTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          SizedBox(
            width: 240,
            height: 95,
            child: Stack(
              children: [
                Ink.image(
                    image: AssetImage('assets/images/cardCategoryLevel.png'),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GameSetPage(
                                    cardCategory: this.cardCategory,
                                    deckIndex: this.deckIndex,
                                    cardPageTitle: this.cardPageTitle,
                                  )),
                        );
                      },
                    ),
                    fit: BoxFit.fill),
                Center(
                  child: Text(
                    '$cardCategory-$buttonIndex',
                    textAlign: TextAlign.center,
                    style: cafe24w700White(24, 36),
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
