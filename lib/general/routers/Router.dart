part of 'RouterImports.dart';


@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    //general routes
    AdaptiveRoute(page: Splash, initial: true),

    // user routes
    AdaptiveRoute(page: Home),
    AdaptiveRoute(page: Cart),
    AdaptiveRoute(page: ProductDetails),

  ],
)
class $AppRouter {}