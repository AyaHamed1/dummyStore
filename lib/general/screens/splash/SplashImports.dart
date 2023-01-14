import 'dart:convert';
import 'package:auto_route/auto_route.dart';
import 'package:dummy_store/general/constants/MyColors.dart';
import 'package:dummy_store/general/routers/RouterImports.gr.dart';
import 'package:dummy_store/res.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../user/models/product_model.dart';
import '../../blocs/cart_cubit/cart_cubit.dart';
import '../../constants/AnimationContainer.dart';
import '../../utils/Utils.dart';

part 'Splash.dart';
part 'SplashData.dart';