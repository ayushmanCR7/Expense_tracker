import 'package:flutter/material.dart';
import 'package:projects2/expense_tracker.dart';

var kColorSchme =
    ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 76, 31, 181));
var kDarkColorSchme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 5, 99, 125));
void main() {
  runApp(
    MaterialApp(
        darkTheme: ThemeData.dark().copyWith(
            useMaterial3: true,
            colorScheme: kDarkColorSchme,
            cardTheme: const CardTheme().copyWith(
              color: kDarkColorSchme.secondaryContainer,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: kDarkColorSchme.primaryContainer,
                  foregroundColor: kDarkColorSchme.onPrimaryContainer),
            )),
        theme: ThemeData().copyWith(
            useMaterial3: true,
            colorScheme: kColorSchme,
            appBarTheme: const AppBarTheme().copyWith(
                backgroundColor: kColorSchme.onPrimaryContainer,
                foregroundColor: kColorSchme.primaryContainer),
            cardTheme: const CardTheme().copyWith(
              color: kColorSchme.secondaryContainer,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: kColorSchme.primaryContainer,
                  foregroundColor: kDarkColorSchme.onPrimaryContainer),
            ),
            textTheme: ThemeData().textTheme.copyWith(
                    titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kColorSchme.secondaryContainer,
                  fontSize: 17,
                ))),
        home: Expenses()),
  );
}
