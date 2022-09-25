import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:shopstag/util/colors.dart';
import 'package:shopstag/util/dimensions.dart';
import 'package:shopstag/widgets/app_icon.dart';
import 'package:shopstag/widgets/expandable_text_widget.dart';

import '../../widgets/big_text.dart';

class RecommendedProductDetails extends StatefulWidget {
  const RecommendedProductDetails({Key? key}) : super(key: key);

  @override
  State<RecommendedProductDetails> createState() =>
      _RecommendedProductDetailsState();
}

class _RecommendedProductDetailsState extends State<RecommendedProductDetails> {
  var _currentPrice = 1299;
  var total = 0;
  var cnt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  child: AppIcon(icon: Icons.shopping_cart_outlined),
                  onTap: () {
                    setState(() {
                      showToast('Shopping Cart');
                    });
                  },
                ),
              ],
            ),
            pinned: true,
            toolbarHeight: 80,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(16),
              child: Container(
                child: Center(
                  child: BigText(
                    text: 'Boat Bass on',
                    size: Dimensions.font26,
                  ),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
              ),
            ),
            backgroundColor: AppColors.mainColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/productDetails.jpg',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(Dimensions.width30),
                  padding: EdgeInsets.only(bottom: Dimensions.height30),
                  child: ExpandableTextWidget(
                      text:
                          'Sound Quality: Redgear Cloak comes equipped with 50mm Driver with Enhanced audio bass and clarity which dramatically improves your in-game sound experience. Inline Remote : NoMicrophone: It comes equipped with a Omni-directional microphone which can be used as per you gaming situations. You can just put it up if it is not in use.Build Quality: It’s luxurious noise-isolating memory foam ear pads and adjustable split headband reduces pressure and provides optimal comfort for long gaming sessions.Other Features: This headset has an amazing RGB LED light effect on ear-ups and tip of the microphone. It also comes equipped with volume control, so just scroll up or down to adjust it.Sound Quality: Redgear Cloak comes equipped with 50mm Driver with Enhanced audio bass and clarity which dramatically improves your in-game sound experience. Inline Remote : NoMicrophone: It comes equipped with a Omni-directional microphone which can be used as per you gaming situations. You can just put it up if it is not in use.Build Quality: It’s luxurious noise-isolating memory foam ear pads and adjustable split headband reduces pressure and provides optimal comfort for long gaming sessions.Other Features: This headset has an amazing RGB LED light effect on ear-ups and tip of the microphone. It also comes equipped with volume control, so just scroll up or down to adjust it.Sound Quality: Redgear Cloak comes equipped with 50mm Driver with Enhanced audio bass and clarity which dramatically improves your in-game sound experience. Inline Remote : NoMicrophone: It comes equipped with a Omni-directional microphone which can be used as per you gaming situations. You can just put it up if it is not in use.Build Quality: It’s luxurious noise-isolating memory foam ear pads and adjustable split headband reduces pressure and provides optimal comfort for long gaming sessions.Other Features: This headset has an amazing RGB LED light effect on ear-ups and tip of the microphone. It also comes equipped with volume control, so just scroll up or down to adjust it.Sound Quality: Redgear Cloak comes equipped with 50mm Driver with Enhanced audio bass and clarity which dramatically improves your in-game sound experience. Inline Remote : NoMicrophone: It comes equipped with a Omni-directional microphone which can be used as per you gaming situations. You can just put it up if it is not in use.Build Quality: It’s luxurious noise-isolating memory foam ear pads and adjustable split headband reduces pressure and provides optimal comfort for long gaming sessions.Other Features: This headset has an amazing RGB LED light effect on ear-ups and tip of the microphone. It also comes equipped with volume control, so just scroll up or down to adjust it.Sound Quality: Redgear Cloak comes equipped with 50mm Driver with Enhanced audio bass and clarity which dramatically improves your in-game sound experience. Inline Remote : NoMicrophone: It comes equipped with a Omni-directional microphone which can be used as per you gaming situations. You can just put it up if it is not in use.Build Quality: It’s luxurious noise-isolating memory foam ear pads and adjustable split headband reduces pressure and provides optimal comfort for long gaming sessions.Other Features: This headset has an amazing RGB LED light effect on ear-ups and tip of the microphone. It also comes equipped with volume control, so just scroll up or down to adjust it.'),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width30 * 4,
                right: Dimensions.width30 * 4,
                top: Dimensions.height30,
                bottom: Dimensions.height30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: AppIcon(
                    icon: Icons.remove,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    size: Dimensions.radius30,
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
                BigText(
                  text: '₹ $_currentPrice' + '   x   ' + '$cnt',
                  size: Dimensions.font26,
                ),
                InkWell(
                  child: AppIcon(
                    icon: Icons.add,
                    backgroundColor: AppColors.mainColor,
                    iconColor: Colors.white,
                    size: Dimensions.radius30,
                  ),
                  onTap: () {
                    setState(() {
                      cnt++;
                      total += _currentPrice;
                    });
                  },
                ),
              ],
            ),
          ),
          Container(
            height: 100,
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
                InkWell(
                  child: Container(
                    padding: EdgeInsets.all(Dimensions.height10),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius16),
                        color: Colors.white),
                    child: Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      showToast('Wishlist');
                    });
                  },
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
                    text: '₹ $total |  Add to Cart',
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
