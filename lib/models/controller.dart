import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stackss_practical/models/state.dart';

final appController =
    StateNotifierProvider.autoDispose<AppController, AppState>((ref) {
  return AppController(AppState.empty());
});

class AppController extends StateNotifier<AppState> {
  AppController(super.state);

  void changeTheme() {
    if (state.darkMode == true) {
      state = state.copyWith(darkMode: false);
      setThemeMode();
    } else {
      state = state.copyWith(darkMode: true);
      setThemeMode();
    }
  }

  void setThemeMode() {
    if (state.darkMode != true) {
      state = state.copyWith(
        primaryBackgroundColor: Colors.grey[200],
        grey: Colors.grey,
        white: Colors.white,
        black: Colors.black,
      );
    } else {
      state = state.copyWith(
          primaryBackgroundColor: Colors.black,
          black: Colors.white,
          grey: Colors.grey,
          white: Colors.grey[800]);
    }
  }

  void navigateBottomNavBar(int index) {
    state = state.copyWith(pageNo: index);
  }
}
