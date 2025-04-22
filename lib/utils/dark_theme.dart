import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme() {
  return ThemeData(
    textTheme: GoogleFonts.readexProTextTheme(),
    // brightness: Brightness.dark,
    // fontFamily: 'Poppins',
    // scaffoldBackgroundColor: kDarkBackgroundColor,
    colorScheme: const ColorScheme.dark(
      // primary: Colors.white,
      // secondary: Colors.white,
      // onSecondary: kPrimaryColor,
      // surface: kSurfaceDarkBackgroundColor,
    ),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     backgroundColor: kDarkBackgroundColor,
    //     minimumSize: const Size(100, 50),
    //   ),
    // ),
    // filledButtonTheme: FilledButtonThemeData(
    //   style: FilledButton.styleFrom(
    //     minimumSize: const Size(100, 50),
    //   ),
    // ),
    // appBarTheme: AppBarTheme(
    //   backgroundColor: kDarkBackgroundColor,
    //   centerTitle: true,
    //   titleTextStyle: TextStyle(
    //     fontSize: 22,
    //     fontFamily: 'Poppins',
    //     fontWeight: FontWeight.w500,
    //     color: Colors.white,
    //   ),
    //   systemOverlayStyle: SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     statusBarIconBrightness: Brightness.light,
    //   ),
    // ),
    // navigationRailTheme: NavigationRailThemeData(
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
    //   suffixIconColor: Colors.grey.shade700,
    //   contentPadding: const EdgeInsets.symmetric(vertical: 22, horizontal: 12),
    //   hintStyle: TextStyle(
    //     fontWeight: FontWeight.w600,
    //     color: Colors.grey.shade700,
    //     fontSize: 15,
    //   ),
    //   enabledBorder: OutlineInputBorder(
    //       borderRadius: BorderRadius.circular(8.0),
    //       borderSide: BorderSide.none),
    //   focusedBorder: OutlineInputBorder(
    //     borderSide: const BorderSide(width: 2),
    //     borderRadius: BorderRadius.circular(8.0),
    //   ),
    //   errorBorder: OutlineInputBorder(
    //     borderSide: const BorderSide(color: Colors.red),
    //     borderRadius: BorderRadius.circular(20.0),
    //   ),
    //   focusedErrorBorder: OutlineInputBorder(
    //     borderSide: const BorderSide(color: Colors.red),
    //     borderRadius: BorderRadius.circular(20.0),
    //   ),
    // ),
  );
}
