import 'package:global_currency/widgets/button_widget.dart';

import '../../theme/color_themes.dart';
import '../../theme/text_themes.dart';
import '../../utils/app_urls.dart';
import '../../widgets/drapdown_menu.dart';

class AddPriceAlert extends StatefulWidget {
  const AddPriceAlert({super.key});

  @override
  State<AddPriceAlert> createState() => _AddPriceAlertState();
}

class _AddPriceAlertState extends State<AddPriceAlert> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Get.isDarkMode
              ? Colors.white
              : Colors.black, // Set icon color based on theme
        ),
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back)),
        title: Text('Add Price Alert',
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: TTextTheme.getTextColor(context))),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Coins',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: TTextTheme.getTextColor(context))),
            SizedBox(height: 11.h),
            Container(
              height: 70.h,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.light
                      ? TColorTheme.backgroundColorLight
                      : TColorTheme.backgroundColorDark,
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/btc.png',
                    width: 50,
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Bitcoin',
                          style: Theme.of(context).textTheme.headlineSmall),
                      Text('BTC',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: TTextTheme.getTextColor(context))),
                    ],
                  ),
                  Spacer(),
                  Text('0.1433567',
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: TTextTheme.getTextColor(context))),
                ],
              ),
            ),
            SizedBox(height: 29.h),
            Text('Target Price',
                style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: 15.h),
            SizedBox(
                height: 25,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    6,
                    (index) => Container(
                      margin:
                          EdgeInsets.only(right: 10), // Adjust margin as needed
                      width: 50,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 1, color: greyColor),
                      ),
                      child: Center(
                        child: Text('-20%',
                            style: Theme.of(context).textTheme.bodySmall),
                      ),
                    ),
                  ),
                )),
            SizedBox(height: 20.h),
            Container(
              height: 70.h,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.light
                      ? TColorTheme.backgroundColorLight
                      : TColorTheme.backgroundColorDark,
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('0.1433567',
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: TTextTheme.getTextColor(context))),
                  const DropDownMenu()
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Text('Alert Mode',
                style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: 20.h),
            SizedBox(
              height: 25,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  2,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: 50,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          width: 1,
                          color: index == selectedIndex
                              ? Colors.blue
                              : Colors.grey,
                        ),
                        color: index == selectedIndex
                            ? Colors.green
                            : Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          'once',
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: index == selectedIndex
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Text(
                'You will receive a one time notification when the price of 1 Bitcoin hits 0.14229',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff7D7D7D))),
            SizedBox(height: 33.h),
            reusableButton(text: 'Save')
          ],
        ),
      ),
    );
  }
}
