import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_image_game/Pages/CardPage.dart';
import 'package:flutter_image_game/Theme/font.dart';

class CountdownPage extends StatefulWidget {
  const CountdownPage(
      {Key? key,
      required this.deckIndex,
      required this.cardCategory,
      required this.cardPageTitle})
      : super(key: key);

  final int deckIndex;
  final String cardCategory;
  final String cardPageTitle;

  @override
  State<CountdownPage> createState() => _countdownPageState(
      deckIndex: this.deckIndex,
      cardCategory: this.cardCategory,
      cardPageTitle: this.cardPageTitle);
}

class _countdownPageState extends State<CountdownPage> {
  _countdownPageState(
      {Key? key,
      required this.deckIndex,
      required this.cardCategory,
      required this.cardPageTitle});

  final int deckIndex;
  final String cardCategory;
  final String cardPageTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2B2B31),
        body: Align(
          alignment: Alignment(0, 0),
          child: SizedBox(
              width: 337,
              height: 551,
              child: Stack(children: [
                Image.asset("assets/images/countdowncard.png"),
                Center(
                  child: AnimatedTextKit(
                    pause: Duration(microseconds: 0),
                    totalRepeatCount: 1,
                    animatedTexts: [
                      ScaleAnimatedText(
                        '3',
                        duration: const Duration(milliseconds: 600),
                        scalingFactor: 1,
                        textAlign: TextAlign.center,
                        textStyle: cafe24w700White(400, 600),
                      ),
                      ScaleAnimatedText(
                        '2',
                        duration: const Duration(milliseconds: 600),
                        scalingFactor: 1,
                        textAlign: TextAlign.center,
                        textStyle: cafe24w700White(400, 600),
                      ),
                      ScaleAnimatedText(
                        '1',
                        duration: const Duration(milliseconds: 600),
                        scalingFactor: 1,
                        textAlign: TextAlign.center,
                        textStyle: cafe24w700White(400, 600),
                      ),
                    ],
                    onFinished: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new CardPage(
                                    deckIndex: this.deckIndex,
                                    cardCategory: this.cardCategory,
                                    cardPageTitle: this.cardPageTitle,
                                  )));
                    },
                  ),
                )
              ])),
        ));
  }
}
