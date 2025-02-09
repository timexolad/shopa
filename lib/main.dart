import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopa_app/cart_provider.dart';

import 'package:shopa_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>CartProvider(),
      child: MaterialApp(
          title: 'Shopa',
          theme: ThemeData(
            fontFamily: 'Lato',
            colorScheme: ColorScheme.fromSeed(
              seedColor: Color.fromRGBO(255, 255, 0, 1),
              primary: Color.fromRGBO(255, 255, 0, 1),
            ),
            inputDecorationTheme: InputDecorationTheme(
              hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              prefixIconColor: Color.fromRGBO(
                119,
                119,
                119,
                1,
              ),
            ),
            textTheme: TextTheme(
              titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              titleMedium: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              bodySmall: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            appBarTheme: AppBarTheme(
              titleTextStyle: TextStyle(fontSize: 20, color: Colors.black),
            ),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          home: HomePage()),
    );
  }
}
