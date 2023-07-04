import 'package:flutter/material.dart';
import 'package:swipe_deck/swipe_deck.dart';

class SwipePaymentCards extends StatefulWidget {
  const SwipePaymentCards({super.key});

  @override
  State<SwipePaymentCards> createState() => _SwipePaymentCardsState();
}

class _SwipePaymentCardsState extends State<SwipePaymentCards> {
  List<List<Color>> gradientColors = [
    [
      Colors.indigo,
      Colors.indigoAccent,
      Colors.black,
    ],
    [
      Colors.pink,
      Colors.pinkAccent,
      Colors.amberAccent,
    ],
    [
      Colors.purple,
      Colors.purpleAccent,
      Colors.greenAccent,
    ],
    [
      Colors.lime,
      Colors.limeAccent,
      Colors.orangeAccent,
    ],
    [
      Colors.red,
      Colors.redAccent,
      Colors.black,
    ],
    [
      Colors.cyan,
      Colors.cyanAccent,
      Colors.white,
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Container(
        child: SwipeDeck(
          startIndex: 4,
          emptyIndicator: Container(
            child: const Center(
              child: Text("Nothing Here"),
            ),
          ),
          cardSpreadInDegrees: 5,
          onSwipeLeft: () {},
          onSwipeRight: () {},
          onChange: (index) {},
          widgets: gradientColors.map((e) => paymentCards(e)).toList(),
        ),
      ),
    );
  }

  Widget paymentCards(List<Color> colors) => Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: colors,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  width: 40,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 10,
                                              )
                    ],
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                Text(
                  "bank".toUpperCase(),
                  style: const TextStyle(
                    shadows: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 20,
                      )
                    ],
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "1234 5252 6262 1234",
                  style: TextStyle(
                    shadows: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 20,
                      )
                    ],
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "20/28",
                  style: TextStyle(
                    shadows: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 20,
                      )
                    ],
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "j.d gabani"
                      .toUpperCase(),
                  style: const TextStyle(
                    shadows: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 20,
                      )
                    ],
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Stack(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 12,
                      ),
                      Transform(
                        transform: Matrix4.translationValues(15, 0, 0),
                        child: const CircleAvatar(
                          backgroundColor: Colors.orange,
                          radius: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
