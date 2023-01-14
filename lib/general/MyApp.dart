import 'package:dummy_store/general/routers/RouterImports.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'blocs/lang_cubit/lang_cubit.dart';
import 'main_data/MainDataImports.dart';


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final navigatorKey =  GlobalKey<NavigatorState>();
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: MainData.providers(context),
      child: BlocBuilder<LangCubit, LangState>(
        builder: (context, state) {
          return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: MainData.defaultThem,
              title: "Dummy Store",
              supportedLocales:const  [
                Locale('en', 'US'),
              ],
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],

              locale: state.locale,
              routerDelegate: _appRouter.delegate(
                  initialRoutes: [SplashRoute(navigatorKey: navigatorKey)]
              ),
              routeInformationParser: _appRouter.defaultRouteParser(),
              builder: (ctx, child) =>FlutterEasyLoading(child: child)
          );
        },
      ),
    );
  }
}
