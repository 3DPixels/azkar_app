import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme() {
  return ThemeData(
    fontFamily: GoogleFonts.readexPro().fontFamily,
    // scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
      // primary: kPrimaryColor,
      // secondary: kPrimaryColor,
      // onSecondary: Colors.white,
      // surface: kBackgroundColor,
    ),
    // progressIndicatorTheme: ProgressIndicatorThemeData(
    //   refreshBackgroundColor: Colors.white,
    // ),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     backgroundColor: Colors.white,
    //     minimumSize: const Size(100, 50),
    //   ),
    // ),
    // filledButtonTheme: FilledButtonThemeData(
    //   style: FilledButton.styleFrom(
    //     minimumSize: const Size(100, 50),
    //   ),
    // ),
    // dividerTheme: DividerThemeData(
    //   color: Colors.grey,
    //   indent: 20,
    //   endIndent: 20,
    // ),
    // appBarTheme: AppBarTheme(
    //   backgroundColor: Colors.white,
    //   // surfaceTintColor: Colors.transparent,
    //   centerTitle: true,
    //   titleTextStyle: TextStyle(
    //     fontSize: 22,
    //     fontFamily: 'Poppins',
    //     fontWeight: FontWeight.w500,
    //     color: Colors.black,
    //   ),
    //   systemOverlayStyle: SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     statusBarIconBrightness: Brightness.dark,
    //   ),
    // ),
    // navigationRailTheme: NavigationRailThemeData(
    //   backgroundColor: kPrimaryColor,
    //   selectedIconTheme: IconThemeData(color: kPrimaryColor),
    //   unselectedIconTheme: IconThemeData(color: Colors.white),
    //   indicatorColor: Colors.white,
    //   selectedLabelTextStyle: TextStyle(
    //     color: Colors.white,
    //     fontFamily: 'Poppins',
    //     fontSize: 16,
    //     fontWeight: FontWeight.w600,
    //   ),
    //   unselectedLabelTextStyle: TextStyle(
    //     color: Colors.white,
    //     fontFamily: 'Poppins',
    //     fontSize: 16,
    //     fontWeight: FontWeight.w500,
    //   ),
    // ),
    // inputDecorationTheme: InputDecorationTheme(
    //   filled: true,
    //   // fillColor: Colors.grey.shade200,
    //   suffixIconColor: Colors.grey.shade700,
    //   contentPadding: const EdgeInsets.symmetric(vertical: 22, horizontal: 12),
    //   hintStyle: TextStyle(
    //     fontWeight: FontWeight.w600,
    //     color: Colors.grey.shade700,
    //     fontSize: 15,
    //   ),
    //   enabledBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(8.0),
    //     borderSide: BorderSide.none,
    //   ),
    //   focusedBorder: OutlineInputBorder(
    //     borderSide: const BorderSide(width: 2),
    //     borderRadius: BorderRadius.circular(8.0),
    //   ),
    //   errorBorder: OutlineInputBorder(
    //     borderSide: const BorderSide(color: Colors.red),
    //     borderRadius: BorderRadius.circular(20.0),
    //   ),
    //   focusedErrorBorder: OutlineInputBorder(
    //     borderSide: const BorderSide(color: Colors.red, width: 2),
    //     borderRadius: BorderRadius.circular(20.0),
    //   ),
    // ),
  );
}
