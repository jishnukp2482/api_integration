import 'dart:html';

import 'package:api_integration/services/httpservices.dart';
import 'package:get/get.dart';

class productcontroller extends GetxController {
  var isloading = true.obs;
  var productlist = [].obs;
  @override
  void onInit() {
    fetchproducts();
    super.onInit();
  }

  void fetchproducts() async {
    try {
      isloading(true);
      var products = await httpservice.fetchproducts();
      if (products != null) {
        productlist.value = products;
      }
    } finally {
      isloading(false);
    }
  }
}
