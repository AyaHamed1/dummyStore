

import 'dart:convert';

import 'package:dummy_store/general/blocs/cart_cubit/cart_cubit.dart';
import 'package:dummy_store/general/blocs/generic_bloc/generic_cubit.dart';
import 'package:dummy_store/general/constants/DefaultAppBar.dart';
import 'package:dummy_store/user/models/product_model.dart';
import 'package:dummy_store/user/screens/cart/widgets/CartWidgetsImports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../general/constants/MyColors.dart';
import '../../../general/constants/MyText.dart';

part 'Cart.dart';
part 'CartData.dart';