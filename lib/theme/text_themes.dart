import '../utils/app_urls.dart';

class TTextTheme{
  TTextTheme._();

  static TextTheme lightTextTheme=TextTheme(
    /////////////////////////////////////Uer for all Heading////////////////////////////////////////////////////////
    headlineLarge: const TextStyle().copyWith(fontSize: 22.0,fontWeight: FontWeight.w700,color: Colors.black),
    /////////////////////////////////////////////////////////////////////////////////////////////
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0,fontWeight: FontWeight.w600,color: Colors.black),
    headlineSmall:  const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w700,color: Colors.black),

    /////////////////////////////////////////////Use for all Grey Color text////////////////////////////////////////////////
    titleLarge:  const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w400,color: greyColor),
    /////////////////////////////////////////////////////////////////////////////////////////////
    titleMedium:  const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w500,color: Colors.black),

    ////////////////////////////////In Use////////////////////////////////////////////////////////////
    titleSmall:  const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w400,color: greyColor),
    ////////////////////////////////////////////////////////////////////////////////////////////

    bodyLarge:  const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w500,color: Colors.black),
    bodyMedium:  const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w400,color: Colors.black),

    //////////////////////////////////use in///////////////////////////////////
    bodySmall:  const TextStyle().copyWith(fontSize: 11.0.sp,fontWeight: FontWeight.w400,color: Colors.black),

    //////////////////////////////////use in///////////////////////////////////
    labelLarge:  const TextStyle().copyWith(fontSize: 12.0,fontWeight: FontWeight.normal,color: Colors.black),

      ////////////////////////////////In Use////////////////////////////////////////////////////////////
    labelMedium:  const TextStyle().copyWith(fontSize: 10.0,fontWeight: FontWeight.w400,color: const Color(0xff878080)),

  );

  static TextTheme darkTextTheme=TextTheme(
    /////////////////////////////////////Uer for all Heading////////////////////////////////////////////////////////
    headlineLarge: const TextStyle().copyWith(fontSize: 22.0,fontWeight: FontWeight.w700,color: whiteColor),
    /////////////////////////////////////////////////////////////////////////////////////////////
      headlineMedium: const TextStyle().copyWith(fontSize: 24.0,fontWeight: FontWeight.w600,color: Colors.white),

    /////////////////////////////////////////////Use for all Grey Color text////////////////////////////////////////////////
    titleLarge:  const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w400,color: whiteColor),
    /////////////////////////////////////////////////////////////////////////////////////////////
      titleMedium:  const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w500,color: Colors.white),
      titleSmall:  const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w400,color: greyColor),

      bodyLarge:  const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w500,color: Colors.white),
      bodyMedium:  const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w400,color: Colors.white),
      //////////////////////////////////use in///////////////////////////////////
      bodySmall:  const TextStyle().copyWith(fontSize: 11.0.sp,fontWeight: FontWeight.w400,color: Colors.white),
      //////////////////////////////////use in///////////////////////////////////

      labelLarge:  const TextStyle().copyWith(fontSize: 12.0,fontWeight: FontWeight.normal,color: Colors.white),

    ////////////////////////////////In Use////////////////////////////////////////////////////////////
      labelMedium: const TextStyle().copyWith(fontSize: 10.0,fontWeight: FontWeight.w400,color: whiteColor)
  );

  static const Color textColorLight = Colors.black;
  static const Color textColorDark = Colors.white;

  static Color getTextColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? textColorDark
        : textColorLight;
  }

}