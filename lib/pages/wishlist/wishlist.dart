import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../util/colors.dart';
import '../../util/dimensions.dart';

class WishList extends StatefulWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  int cnt = 7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist ($cnt)'),
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Boat Wired Headphone',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'RGB Wired Over Ear',
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
                        ),
                        SizedBox(height: Dimensions.height10),
                        GestureDetector(
                          child: Icon(
                            Icons.favorite,
                            color: Colors.pinkAccent,
                          ),
                          onTap: () {
                            setState(() {
                              cnt--;
                              Get.snackbar('Product ABC Removed', 'Still $cnt items in wishlist');
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
