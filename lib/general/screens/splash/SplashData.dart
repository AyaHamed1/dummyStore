part of 'SplashImports.dart';

class SplashData {
  // methods
  void checkingData(BuildContext context) async {
    Future.delayed(const Duration(milliseconds: 1500),
        () => manipulateSplashData(context));
  }

  Future<void> manipulateSplashData(BuildContext context) async {
    AutoRouter.of(context).push(const HomeRoute());
  }

}
