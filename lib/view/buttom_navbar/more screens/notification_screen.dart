import 'package:flutter/cupertino.dart';

import '../../../theme/color_themes.dart';
import '../../../theme/text_themes.dart';
import '../../../utils/app_urls.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool _switchValue = false;
  bool _switchValue1 = true;
  bool _switchValue2 = false;
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
            onTap: (){
              Get.back();
            },
            child: const Icon(Icons.arrow_back)),
        title:  Text('Notification', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
             SizedBox(height: 80.h),
            Container(
              width: 390.w,
              height: 240.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
              decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.light
                      ? TColorTheme.backgroundColorLight
                      : TColorTheme.backgroundColorDark,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('App Notification',
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: TTextTheme.getTextColor(context))),
                        CupertinoSwitch(
                          activeColor: Colors.purple,
                            value: _switchValue,
                          onChanged: (value) {
                            setState(() {
                              // _switchValue = value;
                              Get.changeThemeMode(value ? ThemeMode.dark : ThemeMode.light); // Change theme mode
                            });
                          },)
                      ]),
                  const Divider(),
                  SizedBox(height: 16.h),
                  Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Portfolio Movement',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: TTextTheme.getTextColor(context))),

                            CupertinoSwitch(
                              activeColor: Colors.purple,
                                value: _switchValue1,
                                onChanged: (value) {
                                  setState(() {
                                    _switchValue = value;
                                  });
                                })
                          ]),
                      Text('Never miss important price changes on your portfolio coins again',
                          style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffABABAB))),

                    ],
                  ),
                  SizedBox(height: 6.h),
                  const Divider(),
                  SizedBox(height: 6.h),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Price Alert',
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: TTextTheme.getTextColor(context))),
                        CupertinoSwitch(
                            value: _switchValue2,
                          activeColor: Colors.purple,
                          onChanged: (value) {
                            setState(() {
                              _switchValue = value;
                              Get.changeThemeMode(value ? ThemeMode.dark : ThemeMode.light); // Change theme mode
                            });
                          },)
                      ]),
                  Divider()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


