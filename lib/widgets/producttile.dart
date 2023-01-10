import 'package:api_integration/models/productmodels.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class producttile extends StatelessWidget {
  final Productmodels _productmodelsitems;
  producttile(this._productmodelsitems);

  @override
  Widget build(BuildContext context) {
    return Card(
      
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                
              ),
              child: CachedNetworkImage(imageUrl: _productmodelsitems.image!,
              fit: BoxFit.cover, ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5,10,5,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_productmodelsitems.title!,maxLines: 1,overflow: TextOverflow.fade,style: TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.fade),),
                  Text('\$${_productmodelsitems.price}',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5,10,5,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 if(_productmodelsitems.rating!=null)
                 Container(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10,5,10,5),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(_productmodelsitems.rating!.rate.toString(),
                        style: TextStyle(color: Colors.white),),
                        Icon(Icons.star,color: Colors.white,size: 16,)
                      ],
                    ),
                  ),
                 ),
                 ElevatedButton(onPressed: (){}, child: Text("Add to Cart",style: TextStyle(color: Colors.white),))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
