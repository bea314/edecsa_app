import 'package:flutter/material.dart';

class AppTheme {

  static const Color n1 = Color(0xff073B4C); //073B4C
  static const Color n2 = Color(0xff118AB2); //118AB2
  static const Color n3 = Color(0xff06D6A0); //06D6A0
  static const Color n4 = Color(0xffFFD166); //FFD166
  static const Color n5 = Color(0xff118AB2); //118AB2
  static const Color n6 = Color(0xffEF476F); //EF476F

  static final ThemeData lightTheme = ThemeData.light().copyWith(

        // Color primario
        primaryColor: n1,

        // AppBar Theme
        appBarTheme: const AppBarTheme(
          color: n1,
          elevation: 0,
          centerTitle: true
        ),

        // TextButton Theme
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: n1),
        ),

        // Card Theme
        cardTheme: CardTheme(shadowColor: n1.withOpacity(0.5) ),

        // FloatingActionButton Them
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: n1,
          elevation: 5),

        // ElevatedButton Theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: n1,
            shape: const StadiumBorder(),
            elevation: 0,
          ),
        ),

        // AlertDialog Theme
        dialogTheme: DialogTheme(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),),

        // InputDecoration Theme
        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle( color: n1 ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide( color: n1 ),
            borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
          )
        )
        
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(

        // Color primario
        primaryColor: n1,

        // AppBar Theme
        appBarTheme: const AppBarTheme(
          color: n3,
          elevation: 0,
          centerTitle: true
        ),

        // Color fondo
        scaffoldBackgroundColor: n1,


  );


}