import 'package:flutter/material.dart';
import 'package:shopstag/util/colors.dart';
import 'package:shopstag/util/dimensions.dart';
import 'package:shopstag/widgets/app_column.dart';
import 'package:shopstag/widgets/app_icon.dart';
import 'package:shopstag/widgets/big_text.dart';

class PopularProductDetails extends StatefulWidget {
  const PopularProductDetails({Key? key}) : super(key: key);

  @override
  State<PopularProductDetails> createState() => _PopularProductDetailsState();
}

class _PopularProductDetailsState extends State<PopularProductDetails> {
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
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
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
                ],
              ),
            ),
          )
          // Expandable
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
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
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(width: Dimensions.width16 / 2),
                  BigText(
                    text: '0',
                  ),
                  SizedBox(width: Dimensions.width16 / 2),
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
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
                text: '\$120  |  Add to Cart',
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}