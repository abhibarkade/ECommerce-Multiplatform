import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:shopstag/util/colors.dart';
import 'package:shopstag/util/dimensions.dart';
import 'package:shopstag/widgets/app_column.dart';
import 'package:shopstag/widgets/app_icon.dart';
import 'package:shopstag/widgets/big_text.dart';
import 'package:shopstag/widgets/expandable_text_widget.dart';

class PopularProductDetails extends StatefulWidget {
  const PopularProductDetails({Key? key}) : super(key: key);

  @override
  State<PopularProductDetails> createState() => _PopularProductDetailsState();
}

class _PopularProductDetailsState extends State<PopularProductDetails> {
  var cnt = 0;
  var total = 0;
  var _currentPrice = 1299;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularProductSize,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/productDetails.jpg"))),
            ),
          ),
          // Icons
          Positioned(
            left: Dimensions.width30,
            right: Dimensions.width30,
            top: Dimensions.height48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: AppIcon(icon: Icons.arrow_back),
                  onTap: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                ),
                InkWell(
                  child: AppIcon(icon: Icons.shopping_cart_outlined),
                  onTap: () {
                    setState(() {
                      showToast('Cart');
                    });
                  },
                ),
              ],
            ),
          ),
          // Introduction
          Positioned(
            left: 0,
            right: 0,
            top: Dimensions.popularProductSize - 20,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(Dimensions.width20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Boat Power on Bass"),
                  SizedBox(height: Dimensions.height20),
                  BigText(text: 'Introduce'),
                  SizedBox(height: Dimensions.height10),
                  const Expanded(
                      child: SingleChildScrollView(
                          child: ExpandableTextWidget(
                              text:
                                  'Sound Quality: Redgear Cloak comes equipped with 50mm Driver with Enhanced audio bass and clarity which dramatically improves your in-game sound experience. Inline Remote : NoMicrophone: It comes equipped with a Omni-directional microphone which can be used as per you gaming situations. You can just put it up if it is not in use.Build Quality: It’s luxurious noise-isolating memory foam ear pads and adjustable split headband reduces pressure and provides optimal comfort for long gaming sessions.Other Features: This headset has an amazing RGB LED light effect on ear-ups and tip of the microphone. It also comes equipped with volume control, so just scroll up or down to adjust it.')))
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: EdgeInsets.only(
            top: Dimensions.height24,
            left: Dimensions.width30,
            right: Dimensions.width30),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(Dimensions.radius20 * 2),
            topLeft: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(Dimensions.height10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius16),
                  color: Colors.white),
              child: Row(
                children: [
                  InkWell(
                    child: Icon(
                      Icons.remove,
                      color: AppColors.signColor,
                    ),
                    onTap: () {
                      setState(() {
                        if (cnt > 0) {
                          cnt--;
                          total -= _currentPrice;
                        }
                      });
                    },
                  ),
                  SizedBox(width: Dimensions.width16 / 2),
                  BigText(
                    text: '$cnt',
                    size: Dimensions.font20,
                  ),
                  SizedBox(width: Dimensions.width16 / 2),
                  InkWell(
                    child: Icon(
                      Icons.add,
                      color: AppColors.signColor,
                    ),
                    onTap: () {
                      setState(() {
                        cnt++;
                        total += _currentPrice;
                      });
                    },
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height10,
                  bottom: Dimensions.height10,
                  left: Dimensions.height10 + 5,
                  right: Dimensions.height10 + 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius16),
                  color: AppColors.mainColor),
              child: BigText(
                text: '₹ $total  |  Add to Cart',
                color: Colors.white,
                size: Dimensions.font20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
