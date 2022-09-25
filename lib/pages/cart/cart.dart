import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shopstag/util/colors.dart';
import 'package:shopstag/util/dimensions.dart';
import 'package:shopstag/widgets/app_icon.dart';
import 'package:shopstag/widgets/big_text.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int cnt = 7;
  var price = 1299;
  var total = 7 * 1299;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart ($cnt)'),
        backgroundColor: AppColors.mainColor,
      ),
      body: ListView.builder(
          itemCount: cnt,
          itemBuilder: (context, ind) {
            return Container(
              margin: EdgeInsets.only(
                top: Dimensions.height5,
                left: Dimensions.height5,
                right: Dimensions.height5,
              ),
              height: 160,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius9),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 0.1,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(16),
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius9),
                    ),
                    child: Image.asset('assets/images/product.jpeg'),
                  ),
                  Container(
                    margin: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Boat Wired Headphone',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'RGB Wired Over Ear',
                        ),
                        SizedBox(height: Dimensions.height10),
                        Row(
                          children: [
                            InkWell(
                              child: AppIcon(icon: Icons.remove, size: 30),
                              onTap: () {
                                setState(() {
                                  cnt--;
                                  total -= price;
                                  Get.snackbar(
                                      'Product Removed', 'Add more from menu');
                                });
                              },
                            ),
                            SizedBox(width: Dimensions.width20 * 2),
                            BigText(
                              text: '1',
                              size: Dimensions.font20,
                            ),
                            SizedBox(width: Dimensions.width20 * 2),
                            InkWell(
                              child: AppIcon(icon: Icons.add, size: 30),
                              onTap: () {
                                setState(() {
                                  cnt++;
                                  total += price;
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: Dimensions.height20),
                        Row(
                          children: [
                            Text(
                              '₹ 1299',
                              style: TextStyle(fontWeight: FontWeight.w900),
                            ),
                            SizedBox(width: Dimensions.width20),
                            Text(
                              '₹ 1299',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black45,
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
      bottomNavigationBar: InkWell(
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: AppColors.buttonBackgroundColor),
          child: Container(
            color: AppColors.mainColor,
            child: Center(
              child: Text(
                'Checkout     ₹$total',
                style: TextStyle(
                  fontSize: Dimensions.font20,
                  fontFamily: 'Roboto',
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        onTap: () {
          if (cnt == 0)
            Get.snackbar('Cart is Empty', 'Add products to cart from menu');
          else
            Get.snackbar('Processing', 'Add products to cart from menu');
        },
      ),
    );
  }
}
