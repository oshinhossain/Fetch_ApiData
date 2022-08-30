import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/product_model.dart';

Future<List<ProductModel?>?> getProductData() async {
  try {
    String url = "https://fakestoreapi.com/products";
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
      List<ProductModel?> pr = parsed
          .map<ProductModel>((json) => ProductModel.fromJson(json))
          .toList();
      return pr;
    }
  } catch (e) {
    debugPrint("$e");
    return null;
  }
}
