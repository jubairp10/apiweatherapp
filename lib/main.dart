import 'package:apiweatherapp/screens/home_page.dart';
import 'package:apiweatherapp/services/loction_provider_dart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
     ChangeNotifierProvider(create: (context)=>LocationProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'weather app',
        theme: ThemeData(
            iconButtonTheme: IconButtonThemeData(
              style: ButtonStyle(
                iconColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
            ),
      
          appBarTheme:AppBarTheme(backgroundColor: Colors.transparent,
          elevation: 0),
       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true
        ),
        home: homepage
          (),
      ),
    );
  }
}


