// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:dummy_store/general/screens/splash/SplashImports.dart' as _i1;
import 'package:dummy_store/user/models/product_model.dart' as _i7;
import 'package:dummy_store/user/screens/cart/CartImports.dart' as _i3;
import 'package:dummy_store/user/screens/home/HomeImports.dart' as _i2;
import 'package:dummy_store/user/screens/product_details/ProductDetailsImports.dart'
    as _i4;
import 'package:flutter/material.dart' as _i6;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>();
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i1.Splash(navigatorKey: args.navigatorKey),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.Home(),
      );
    },
    CartRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.Cart(),
      );
    },
    ProductDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailsRouteArgs>();
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i4.ProductDetails(
          key: args.key,
          model: args.model,
        ),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          HomeRoute.name,
          path: '/Home',
        ),
        _i5.RouteConfig(
          CartRoute.name,
          path: '/Cart',
        ),
        _i5.RouteConfig(
          ProductDetailsRoute.name,
          path: '/product-details',
        ),
      ];
}

/// generated route for
/// [_i1.Splash]
class SplashRoute extends _i5.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({required _i6.GlobalKey<_i6.NavigatorState> navigatorKey})
      : super(
          SplashRoute.name,
          path: '/',
          args: SplashRouteArgs(navigatorKey: navigatorKey),
        );

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({required this.navigatorKey});

  final _i6.GlobalKey<_i6.NavigatorState> navigatorKey;

  @override
  String toString() {
    return 'SplashRouteArgs{navigatorKey: $navigatorKey}';
  }
}

/// generated route for
/// [_i2.Home]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/Home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.Cart]
class CartRoute extends _i5.PageRouteInfo<void> {
  const CartRoute()
      : super(
          CartRoute.name,
          path: '/Cart',
        );

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i4.ProductDetails]
class ProductDetailsRoute extends _i5.PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({
    _i6.Key? key,
    required _i7.ProductModel model,
  }) : super(
          ProductDetailsRoute.name,
          path: '/product-details',
          args: ProductDetailsRouteArgs(
            key: key,
            model: model,
          ),
        );

  static const String name = 'ProductDetailsRoute';
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({
    this.key,
    required this.model,
  });

  final _i6.Key? key;

  final _i7.ProductModel model;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key, model: $model}';
  }
}
