import 'package:dummy_store/general/providers/cart_provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:provider/provider.dart';
import 'general/MyApp.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
      ChangeNotifierProvider(
        create: (BuildContext context) => CartProvider(),
        child:  Phoenix(child: const MyApp()),
      )
  );
}
