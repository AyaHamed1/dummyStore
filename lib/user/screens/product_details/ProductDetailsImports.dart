import 'dart:convert';
import 'package:dummy_store/general/constants/DefaultAppBar.dart';
import 'package:dummy_store/general/constants/MyColors.dart';
import 'package:dummy_store/user/models/product_model.dart';
import 'package:dummy_store/user/screens/product_details/widgets/ProductDetailsWidgetsImports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../general/constants/MyText.dart';
import '../../../general/providers/cart_provider/provider.dart';
import '../../../general/providers/total_provider/provider.dart';

part 'ProductDetails.dart';
part 'ProductDetailsData.dart';