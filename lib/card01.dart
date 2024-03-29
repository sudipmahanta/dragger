import 'dart:math';

import 'package:cards/cards.dart';
import 'package:flutter/material.dart';

class Card01 extends StatefulWidget {
  double left;
  double top;
  final Widget child;
  Card01(
      {Key? key,
      this.left = 0.0,
      this.top = 0.0,
      this.child = const SizedBox()})
      : super(key: key);

  @override
  State<Card01> createState() => _Card01State();
}

class _Card01State extends State<Card01> {
  // double right = 150.0;
  // double bottom = 0.0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).padding.top +
            MediaQuery.of(context).padding.bottom);
    return Positioned(
      // bottom: bottom,
      // right: 10,
      left: widget.left,
      top: widget.top,

      child: GestureDetector(
          onPanUpdate: (details) {
            widget.left = max(0, widget.left + details.delta.dx);
            widget.top = max(0, widget.top + details.delta.dy);

            setState(() {
              debugPrint('Left: ${widget.left.toString()}');

              debugPrint('Top: ${widget.top.toString()}');
            });
          },
          child: widget.child),
    );
  }
}
