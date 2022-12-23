import 'package:flutter/material.dart';

class Dragger extends StatefulWidget {
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;
  final double? width;
  final double? height;
  final Widget child;
  void Function(DragUpdateDetails)? onPanUpdate;
  Dragger(
      {super.key,
      this.left,
      this.top,
      this.right,
      this.bottom,
      required this.child,
      this.width,
      this.height,
      this.onPanUpdate})
      : assert(left == null || right == null || width == null),
        assert(right == null || bottom == null || height == null);

  @override
  State<Dragger> createState() => _DraggerState();
}

class _DraggerState extends State<Dragger> {
  double? left;
  double? top;
  double? bottom;
  double? right;

  @override
  void initState() {
    super.initState();
    left = widget.left;
    top = widget.top;
    right = widget.right;
    bottom = widget.bottom;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      bottom: bottom,
      left: left,
      top: top,
      width: widget.width,
      height: widget.height,
      child: GestureDetector(
          onPanUpdate: widget.onPanUpdate,
          //     (details) {
          //   left = max(0, left! + details.delta.dx);
          //   top = max(0, top! + details.delta.dy);
          //   bottom = max(details.delta.dy, 0);
          //   right = max(0, right! + details.delta.dx);
          //   bottom = max(0, bottom! + details.delta.dy);
          //   setState(() {
          //     debugPrint('Left: ${left.toString()}');
          //     debugPrint('Bottom: ${bottom.toString()}');
          //     debugPrint('Right: ${right.toString()}');
          //     debugPrint('Top: ${top.toString()}');
          //   });
          // },
          onTap: () {
            setState(() {
              widget.onPanUpdate;
            });
          },
          child: widget.child),
    );
  }
}
