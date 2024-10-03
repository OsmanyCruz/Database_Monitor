import 'package:database_monitor/pages/home_page.dart';
import 'package:database_monitor/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DataBase Monitor',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (context) => const LoginPage(),
        'home': (context) => const HomePage()
        
      },
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffFBFBFB),
        appBarTheme: const AppBarTheme(
          backgroundColor:Color(0xffFBFBFB),
          elevation: 0.0,
          centerTitle: true,

        ),
        useMaterial3: true,
      ),
     
    );
  }
}