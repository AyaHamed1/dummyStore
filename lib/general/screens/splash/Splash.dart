part of 'SplashImports.dart';

class Splash extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  const Splash({required this.navigatorKey});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final SplashData splashData = SplashData();

  @override
  void initState() {
    splashData.checkingData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimationContainer(
          index: 0,
          vertical: true,
          duration: const Duration(milliseconds: 800),
          distance: MediaQuery.of(context).size.height * .3,
          child: Hero(
            tag: Res.logo,
            child: Image.asset(
              Res.logo,
              width: 150,
              height: 150,
            ),
          ),
        ),
      ),
    );
  }
}
