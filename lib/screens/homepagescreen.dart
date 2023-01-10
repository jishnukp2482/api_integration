import 'package:api_integration/controllers/productcontroller.dart';
import 'package:api_integration/widgets/producttile.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class homepagescreen extends StatelessWidget {
  final productcontroller _productController = Get.put(productcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(5,10,5,10),
          child: Container(
            width: double.infinity,
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.rectangle),
            child: TextField(
              decoration:
                  InputDecoration(border: InputBorder.none, hintText: "search",prefixIcon: Icon(Icons.search_outlined)),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
        leading: Icon(Icons.favorite_border_outlined),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  "ShopMe",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                )
                ),
              ],
            ),
          ),
          Expanded(child: Obx(
            () {
            if (_productController.isloading.value) {
              return Center(child: CircularProgressIndicator());
            } else {
              return GridView.builder(
                itemCount: _productController.productlist.length,
                
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemBuilder: (context, index) {
                  return producttile(_productController.productlist[index]);
                },
              );
            }
          }))
        ],
      ),
    );
  }
}
