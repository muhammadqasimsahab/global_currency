import 'package:global_currency/theme/appbar_theme.dart';
import 'package:global_currency/theme/text_themes.dart';
import 'package:global_currency/theme/textfield_theme.dart';

import '../utils/app_urls.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Inter',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    // bottomSheetTheme: ,
    elevatedButtonTheme: const ElevatedButtonThemeData(),
    // outlinedButtonTheme:
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Inter',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      elevatedButtonTheme: const ElevatedButtonThemeData(),
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme);
}
