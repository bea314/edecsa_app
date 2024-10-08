import 'package:flutter/material.dart';

class AppTheme {

  static const Color n1 = Color(0xff073B4C); //073B4C
  static const Color n2 = Color(0xff118AB2); //118AB2
  static const Color n3 = Color(0xff06D6A0); //06D6A0
  static const Color n4 = Color(0xffFFD166); //FFD166
  static const Color n5 = Color(0xffEF476F); //EF476F
  static const Color light = Colors.white;

  static final ThemeData lightTheme = ThemeData.light().copyWith(

        // Color primario
        primaryColor: n1,

        // AppBar Theme
        appBarTheme: const AppBarTheme(
          color: n1,
          elevation: 0,
          centerTitle: true,
        ),

        // TextButton Theme
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: n1,),
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
            backgroundColor: n1,
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

        // Text Theme
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300),
          bodyMedium: TextStyle(fontSize: 20.0),
          titleLarge: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
          labelMedium: TextStyle(fontSize: 16.0),
        ),

        // AppBar Theme
        appBarTheme: const AppBarTheme(
          color: n1,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            size: 45.0
          ),
          actionsIconTheme: IconThemeData(
            size: 35.0
          ),
        ),

        // Color fondo
        scaffoldBackgroundColor: n1,

        drawerTheme: const DrawerThemeData(
          backgroundColor: light,
          elevation: 0,
        ),

        switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.selected)) {
              return n4;
            }
            return Colors.grey;
          }),
          trackColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.selected)) {
              return light;
            }
            return light;
          }),
        )

  );


}