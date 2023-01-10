import 'package:api_integration/controllers/productcontroller.dart';
import 'package:api_integration/models/productmodels.dart';
import 'package:http/http.dart ' as http;
class httpservice{

  static Future<List<Productmodels>>fetchproducts()async{
   var response=await http.get(Uri.parse("https://fakestoreapi.com/products"));
   if (response.statusCode==200){
    var data=response.body;
    return productmodelsFromJson(data);
   }else{
    throw Exception();
   }
  }
}