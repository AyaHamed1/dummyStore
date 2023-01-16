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

  static List<ChangeNotifierProvider>  providers(BuildContext context)=>[
    ChangeNotifierProvider<CartProvider>(
      create: (BuildContext context)=> CartProvider()
    ),
    ChangeNotifierProvider<TotalProvider>(
      create: (BuildContext context)=> TotalProvider()
    ),
  ];


}