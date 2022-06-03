import 'package:flutter/material.dart';
import 'package:flutter_hero_list/data/api_manager.dart';
import 'package:flutter_hero_list/data/gender_manager.dart';
import 'package:flutter_hero_list/screens/splash_screen.dart';
import 'package:provider/provider.dart';
//import 'package:flutter_hero_list/screens/super_heroes_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ApiManager(),
          lazy: false,
        ),
        ChangeNotifierProvider(
          create: (_) => GenderManager(),
          lazy: false,
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          cursorColor: Colors.grey[800],
          primarySwatch: Colors.cyan,
          primaryColor: Colors.grey[800],
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
