import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopstag/pages/product/recommendedProductDetails.dart';

import 'helper/dependancies.dart' as dep;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(primaryColor: Colors.red),
      home: const RecommendedProductDetails(),
    );
  }
}
