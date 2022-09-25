import 'package:flutter/material.dart';
import 'package:shopstag/widgets/small_text.dart';

import '../util/colors.dart';
import '../util/dimensions.dart';
import 'big_text.dart';
import 'icon_with_text.dart';

class AppColumn extends StatelessWidget {
  final String text;

  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font20,
        ),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: AppColors.iconColor1,
                        size: Dimensions.height15,
                      )),
            ),
            SizedBox(width: Dimensions.height10),
            SmallText(text: '4.5'),
            SizedBox(width: Dimensions.height10),
            SmallText(text: '147'),
            SizedBox(width: Dimensions.height10),
            SmallText(text: 'Comment'),
          ],
        ),
        SizedBox(height: Dimensions.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            IconWithTextWidget(
                icon: Icons.currency_rupee,
                iconColor: Colors.black,
                text: '1299'),
            IconWithTextWidget(
                icon: Icons.location_on,
                iconColor: Colors.redAccent,
                text: 'India'),
            IconWithTextWidget(
                icon: Icons.access_time_filled_rounded,
                iconColor: AppColors.iconColor2,
                text: '2-4 Days'),
          ],
        )
      ],
    );
  }
}
