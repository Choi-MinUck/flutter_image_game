import 'package:flutter/material.dart';
import 'package:flutter_image_game/Pages/CardPage.dart';
import 'package:flutter_image_game/Pages/CountdownPage.dart';
import 'package:flutter_image_game/Theme/font.dart';

class GameSetPage extends StatefulWidget {
  const GameSetPage({Key? key, required this.cardCategory}) : super(key: key);

  final String cardCategory;
  @override
  State<GameSetPage> createState() =>
      _GameSetPageState(cardCategory: this.cardCategory);
}

class _GameSetPageState extends State<GameSetPage> {
  _GameSetPageState({Key? key, required this.cardCategory});

  int cardcount = 15;
  final String cardCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/starthome.png"),
          fit: BoxFit.cover,
        )),
      ),
      Padding(
        padding: const EdgeInsets.only(
          // left: 62,
          top: 347,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              height: 61,
              width: 61,
              child: InkWell(
                  onTap: () {
                    minusCounter();
                  },
                  child: Image.asset('assets/images/minusbutton.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                  width: 89,
                  height: 60,
                  child: Center(
                    child: Text(
                      "$cardcount" "장",
                      style: cafe24w700White(40, 60),
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              height: 61,
              width: 61,
              child: InkWell(
                  onTap: () {
                    incrementCounter();
                  },
                  child: Image.asset('assets/images/addbutton.png')),
            ),
          ],
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 200,
          ),
          child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CountdownPage(
                            cardCount: cardcount,
                            cardCategory: this.cardCategory,
                          )),
                );
              },
              child: const Text(
                "게임 시작",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
              )),
        ),
      )
    ]));
  }

  void incrementCounter() {
    setState(() {
      if (cardcount == 25) {
        cardcount = 25;
      } else {
        cardcount++;
      }
    });
  }

  void minusCounter() {
    setState(() {
      if (cardcount == 0) {
        cardcount = 0;
      } else {
        cardcount--;
      }
    });
  }
}
