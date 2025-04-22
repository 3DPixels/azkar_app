import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../services/cache_helper.dart';

part 'local_state.dart';

class LocalCubit extends Cubit<LocalState> {
  LocalCubit() : super(LocalInitial());

  static LocalCubit get(context) => BlocProvider.of(context);
  static late ThemeMode currentTheme;
  // static late Locale languageLocal;
  bool notificationsToggle = true;

  int mainIndex = 0; // Used for navigation
  List<String> pageNames = [
    'Home',
    'Categories',
    'Other',
    'Settings',
  ]; // Used to display on the appBar

  void changeMainIndex(int selectedIndex) {
    mainIndex = selectedIndex;
    emit(LocalInitial());
  }

  void resetIndex() {
    mainIndex = 0;
    emit(LocalInitial());
  }

  void getSavedThemeMode() {
    final bool themeMode = CacheHelper.getThemeMode();
    currentTheme = themeMode ? ThemeMode.dark : ThemeMode.light;
    emit(LocalInitial());
  }

  // void getSavedLanguage() {
  //   final String cachedLanguageCode = CacheHelper.getLanguageCode();
  //   languageLocal = Locale(cachedLanguageCode);
  //   emit(LocalInitial());
  // }

  Future<void> changeTheme() async {
    currentTheme =
        currentTheme == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    await CacheHelper.cacheThemeMode(currentTheme == ThemeMode.dark);
    emit(LocalInitial());
  }

  // Future<void> changeLanguage(String languageCode) async {
  //   await CacheHelper.cacheLanguage(languageCode);
  //   languageLocal = Locale(languageCode);
  //   emit(LocalInitial());
  // }

  toggleNotification() {
    notificationsToggle = !notificationsToggle;
    emit(LocalInitial());
  }
}
