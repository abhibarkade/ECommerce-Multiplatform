import 'package:flutter/material.dart';
import 'package:shopstag/widgets/small_text.dart';

import '../util/dimensions.dart';

class IconWithTextWidget extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text;

  const IconWithTextWidget(
      {Key? key,
      required this.icon,
      required this.iconColor,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: Dimensions.height24,
        ),
        SizedBox(width: 5),
        SmallText(text: text),
      ],
    );
  }
}
