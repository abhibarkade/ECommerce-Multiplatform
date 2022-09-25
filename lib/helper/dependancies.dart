import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shopstag/controller/popular_product_controller.dart';
import 'package:shopstag/data/api/api_client.dart';
import 'package:shopstag/data/repository/popular_product_repo.dart';

Future<void> init() async {
  // Api
  Get.lazyPut(() => ApiClient(appBaseUrl: "https:/www.dbestech.com"));

  // Repo's
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  // Controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
