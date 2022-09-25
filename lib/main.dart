import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';
import 'package:shopstag/pages/home/main_product_page.dart';
import 'package:shopstag/pages/product/recommendedProductDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OKToast(
      position: ToastPosition.bottom,
      textStyle: const TextStyle(fontSize: 19.0, color: Colors.black),
      backgroundColor: Colors.white,
      animationCurve: Curves.easeIn,
      animationDuration: const Duration(milliseconds: 200),
      duration: const Duration(seconds: 3),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (BuildContext context, Widget? widget) {
          return OKToast(child: widget!);
        },
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        darkTheme: ThemeData(primaryColor: Colors.red),
        home: RecommendedProductDetails(),
      ),
    );
  }
}
