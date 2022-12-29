import 'dart:math';

import 'package:cards/cards.dart';
import 'package:flutter/material.dart';

class NewWidget extends StatefulWidget {
  double left;
  double top;
  double bottom;
  double right;

  final Widget child;
  NewWidget(
      {Key? key,
      this.left = 0.0,
      this.top = 0.0,
      this.right = 0.0,
      this.bottom = 0.0,
      this.child = const SizedBox()})
      : super(key: key);

  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  // double right = 150.0;
  // double bottom = 0.0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).padding.top +
            MediaQuery.of(context).padding.bottom);
    return Container(
      margin: EdgeInsets.only(
          left: widget.left,
          right: widget.right,
          top: widget.top,
          bottom: widget.bottom),
      // bottom: bottom,
      // right: 10,

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
