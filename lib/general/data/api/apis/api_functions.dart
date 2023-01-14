import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dummy_store/general/data/api/api.dart';
import 'package:dummy_store/user/models/product_model.dart';
import 'package:flutter/material.dart';

class ApiFunctions {
  final Dio client = Dio();

  ApiFunctions();

  var baseUrl = ApiConstants.baseUrl;

  Future<List<ProductModel>> getProducts({String? url}) async {
    try {
      final response =
          await client.get(url ?? baseUrl + ApiNames.products );
      debugPrint("=== REQUEST URL ===");
      debugPrint("url : ${baseUrl + ApiNames.products}");
      if (response.data != null) {
        debugPrint("data = ${response.data}");
        return List<ProductModel>.from(
            response.data.map((x) => ProductModel.fromJson(x)));
      } else {
        return [];
      }
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }
}
