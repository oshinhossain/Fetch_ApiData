import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:convert' as convert;

import '../model/details_model.dart';

@override
Future<DetailsInfo?> getDetailsData() async {
  try {
    String url = "https://reqres.in/api/users?page=2";
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      Map<String, dynamic> map = json.decode(response.body);
      DetailsInfo? detailsInfo =
      DetailsInfo.fromJson(map as Map<String, dynamic>);
      return detailsInfo;
    }
  } catch (e) {
    debugPrint("$e");
  }
}
