import 'package:flutter/material.dart';

class AppState {
  final Color? primaryBackgroundColor;
  final Color? grey;
  final Color? white;
  final Color? black;
  final bool darkMode;
  final int? pageNo;

  AppState(
      {required this.primaryBackgroundColor,
      required this.grey,
      required this.white,
      required this.black,
      required this.darkMode,
      this.pageNo});
  factory AppState.empty() {
    return AppState(
      primaryBackgroundColor: Colors.grey[200],
      grey: Colors.grey,
      white: Colors.white,
      black: Colors.black,
      darkMode: false,
      pageNo: 0,
    );
  }
  AppState copyWith({
    Color? primaryBackgroundColor,
    Color? grey,
    Color? white,
    Color? black,
    bool? darkMode,
    int? pageNo,
  }) {
    return AppState(
        primaryBackgroundColor:
            primaryBackgroundColor ?? this.primaryBackgroundColor,
        grey: grey ?? this.grey,
        black: black ?? this.black,
        white: white ?? this.white,
        darkMode: darkMode ?? this.darkMode,
        pageNo: pageNo ?? this.pageNo);
  }
}
