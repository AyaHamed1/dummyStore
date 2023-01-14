import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'general/MyApp.dart';
import 'general/blocs/lang_cubit/lang_cubit.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
      BlocProvider(
        create: (BuildContext context) => LangCubit(),
        child:  Phoenix(child: const MyApp()),
      )
  );
}
