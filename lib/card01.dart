import 'dart:math';

import 'package:cards/cards.dart';
import 'package:flutter/material.dart';

class Card01 extends StatefulWidget {
  const Card01({Key? key}) : super(key: key);

  @override
  State<Card01> createState() => _Card01State();
}

class _Card01State extends State<Card01> {
  double top = 0.0;
  double left = 0.0;
  // double right = 150.0;
  // double bottom = 0.0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).padding.top +
            MediaQuery.of(context).padding.bottom);
    return Scaffold(
      body: Center(
        child: Container(
          width: width * 0.86,
          height: height * 0.60,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Dragger(
                // bottom: bottom,
                // right: 10,
                left: left,
                top: top,
                onPanUpdate: (details) {
                  // bottom = max(0, details.delta.dy);
                  // right = max(0, right + details.delta.dx);
                  setState(() {
                    left = max(0, left + details.delta.dx);
                    top = max(0, top + details.delta.dy);
                    debugPrint('Left: ${left.toString()}');
                    // debugPrint('Bottom: ${bottom.toString()}');
                    // debugPrint('Right: ${right.toString()}');
                    debugPrint('Top: ${top.toString()}');
                  });
                },
                child: Container(
                  width: 110,
                  height: 200,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://www.visitdubai.com/-/media/gathercontent/article/t/take-the-perfect-photo-of-burj-khalifa/media/v3/best-burj-khalifa-picture-header-2.jpg'))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
