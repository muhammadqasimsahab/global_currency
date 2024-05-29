import 'package:flutter/material.dart';

import '../theme/appbar_theme.dart';
import '../utils/app_urls.dart';

Widget appbar({required String title, required IconData icon,Function()? onpress}) {
  return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Get.isDarkMode
          ? TAppBarTheme.darkAppBarTheme.backgroundColor
          : TAppBarTheme.lightAppBarTheme.backgroundColor,
      iconTheme: IconThemeData(
        color: Get.isDarkMode
            ? Colors.white
            : Colors.black,
      ),
      titleTextStyle: Get.isDarkMode
          ? TAppBarTheme.darkAppBarTheme.titleTextStyle
          : TAppBarTheme.lightAppBarTheme.titleTextStyle,
      elevation: 0,
      actions: [
        Text(title,
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                fontFamily: 'Inter')),
        SizedBox(width: 16.w),
        InkWell(
            onTap: onpress,
            child: Icon(icon)),
        SizedBox(width: 20.w),
      ]);
}

// Widget secondAppbar({required String title}) {
//   return AppBar(
//     automaticallyImplyLeading: false,
//     backgroundColor: Get.isDarkMode
//         ? TAppBarTheme.darkAppBarTheme.backgroundColor
//         : TAppBarTheme.lightAppBarTheme.backgroundColor,
//     iconTheme: IconThemeData(
//       color: Get.isDarkMode
//           ? Colors.white
//           : Colors.black, // Set icon color based on theme
//     ),
//     titleTextStyle: Get.isDarkMode
//         ? TAppBarTheme.darkAppBarTheme.titleTextStyle
//         : TAppBarTheme.lightAppBarTheme.titleTextStyle,
//     elevation: 0,
//     title: Text(title ,style: Theme.of(context).textTheme.bodyMedium,),
//     centerTitle: true,
//     leading: const Icon(Icons.arrow_back),
//   );
// }

class secondAppbar extends StatelessWidget {
  var title;
  Function()? onpress;
   secondAppbar({super.key,required this.title, this.onpress});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Get.isDarkMode
          ? TAppBarTheme.darkAppBarTheme.backgroundColor
          : TAppBarTheme.lightAppBarTheme.backgroundColor,
      iconTheme: IconThemeData(
        color: Get.isDarkMode
            ? Colors.white
            : Colors.black, // Set icon color based on theme
      ),
      titleTextStyle: Get.isDarkMode
          ? TAppBarTheme.darkAppBarTheme.titleTextStyle
          : TAppBarTheme.lightAppBarTheme.titleTextStyle,
      elevation: 0,
      title: Text(title ,style: Theme.of(context).textTheme.headlineMedium),
      centerTitle: true,
      leading: InkWell(
          onTap: onpress,
          child: const Icon(Icons.arrow_back)),
    );
  }
}

