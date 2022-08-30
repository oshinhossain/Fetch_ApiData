import 'package:flutter/material.dart';

import '../model/product_model.dart';
import '../service/http_product.dart';


class ProductProvider extends ChangeNotifier {
  // List<Map<String, dynamic>> data_list = [];

  List<ProductModel?> productModel = [];

  getData() async {
    // isloading = true;
    var data = await getProductData();
    productModel = data!.toList();
    // isloading = true;
    notifyListeners();
  }
}