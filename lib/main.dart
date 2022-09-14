import 'package:flutter/material.dart';
import 'package:orange/presentation/constants/constents.dart';
import 'package:orange/screen/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'business_logic/notes/notes_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
        BlocProvider(create: (context) => NotesCubit()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ODC',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(primaryColor))
        ),
        outlinedButtonTheme:OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              primary: primaryColor,
              side: const BorderSide(color: primaryColor),
            )
        ),
        backgroundColor: Colors.teal,
        primarySwatch: Colors.blue,
      ),

      home: SplashScreen(),
    ),

    );
  }
}