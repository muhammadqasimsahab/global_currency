import '../theme/color_themes.dart';
import '../utils/app_urls.dart';

class SmallContainer extends StatelessWidget {
  const SmallContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container(
      height: 200.h,
      width: 150.w,
      padding: const EdgeInsets.symmetric(horizontal: 20,),
      decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.light
              ? TColorTheme.backgroundColorLight
              : TColorTheme.backgroundColorDark,
          borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Theme.of(context).brightness == Brightness.light
            ? TColorTheme.backgroundColorLight
            : TColorTheme.backgroundColorDark,
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/image1.png',),
          SizedBox(height: 10),
           Text('In a monumental turn of events, Bitcoin (BTC) has shattered its previous all-time high',style: Theme.of(context).textTheme.bodySmall,)
       ,   SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
