import '../utils/app_urls.dart';

class TTextFormFieldTheme{
  TTextFormFieldTheme._();

  static const TextStyle lightInputTextStyle = TextStyle(fontSize: 14, color: Colors.black);
  static const TextStyle darkInputTextStyle = TextStyle(fontSize: 14, color: Colors.white);

  static const TextStyle lightInputLabelStyle = TextStyle(fontSize: 14, color: Colors.black);
  static const TextStyle darkInputLabelStyle = TextStyle(fontSize: 14, color: Colors.white);

  static InputDecorationTheme lightInputDecorationTheme=InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(fontSize: 14,color: Colors.black),
    hintStyle: const TextStyle().copyWith(fontSize: 11,color: greyColor),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1,color: greyColor)
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1,color: Colors.grey)
    ),
    focusedBorder:  OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1,color: greyColor)
    ),
    errorBorder:  OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1,color: greyColor)
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 2,color: Colors.orange)
    )
  );

  static InputDecorationTheme darkInputDecorationTheme=InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: Colors.grey,
      suffixIconColor: Colors.grey,
      labelStyle: const TextStyle().copyWith(fontSize: 14,color: Colors.black),
      hintStyle: const TextStyle().copyWith(fontSize: 14,color: Colors.black),
      errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
      floatingLabelStyle: const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
      border: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1,color: greyColor)
      ),
      enabledBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1,color: Colors.grey)
      ),
      focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1,color: greyColor)
      ),
      errorBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1,color: greyColor)
      ),
      focusedErrorBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 2,color: Colors.orange)
      )
  );
}