import 'package:flutter/material.dart';
import 'package:shopstag/home/product_page_body.dart';
import 'package:shopstag/util/colors.dart';
import 'package:shopstag/util/dimensions.dart';
import 'package:shopstag/widgets/big_text.dart';
import 'package:shopstag/widgets/small_text.dart';

class MainProductPage extends StatefulWidget {
  const MainProductPage({Key? key}) : super(key: key);

  @override
  State<MainProductPage> createState() => _MainProductPageState();
}

class _MainProductPageState extends State<MainProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height48, bottom: Dimensions.height16),
              padding: EdgeInsets.only(
                  left: Dimensions.height24, right: Dimensions.height24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: 'India',
                        color: AppColors.mainColor,
                        size: Dimensions.height24,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: 'Sangli',
                            color: Colors.black,
                          ),
                          const Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.height48,
                      height: Dimensions.height48,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius16),
                          color: AppColors.mainColor),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: Dimensions.height24,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          // Body
          Expanded(
            child: SingleChildScrollView(
              child: ProductPageBody(),
            ),
          ),
        ],
      ),
    );
  }
}
