import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;

  SmallText(
      {Key? key,
      this.color = const Color(0xFFccc7c5),
      required this.text,
      this.size = 12})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(color: color, fontSize: size),
    );
  }
}
