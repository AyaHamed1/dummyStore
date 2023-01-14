part of 'MainDataImports.dart';


class MainData {

  static ThemeData defaultThem = ThemeData(
    primarySwatch: Colors.grey,
    focusColor: MyColors.primary,
    accentColor: MyColors.primary,
    primaryColor: MyColors.primary,
    fontFamily: GoogleFonts.poppins().fontFamily,
    textTheme: TextTheme(
      subtitle1: GoogleFonts.poppins(fontSize: 14),
    ),
  );

  static List<BlocProvider>  providers(BuildContext context)=>[
    BlocProvider<LangCubit>(
      create: (BuildContext context)=> LangCubit()
    ),
    BlocProvider<CartCubit>(
      create: (BuildContext context)=> CartCubit()
    ),
  ];


}