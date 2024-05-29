import 'package:flutter/cupertino.dart';
import 'package:global_currency/view/welcom_back_activity.dart';
import 'package:global_currency/widgets/button_widget.dart';

import '../../../theme/color_themes.dart';
import '../../../theme/icons_themes.dart';
import 'notification_screen.dart';
import '../../../utils/app_urls.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.07.h),
                  Center(
                      child: Image.asset('assets/images/applogo.png',
                          width: 80.w)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Container(
                    height: 96.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 19.h),
                    width: double.infinity,
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
                            Text('My Account',
                                style: Theme.of(context).textTheme.titleMedium),
                            SizedBox(
                                height: 24.h,
                                width: 90.w,
                                child: reusableButton(text: 'Verified'))
                          ],
                        ),
                        const Divider(),
                        InkWell(
                          onTap: () {
                            Get.to(() => const NotificationScreen());
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.notifications_none,
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? TIconColorTheme.iconColorDark
                                    : TIconColorTheme.iconColorLight,
                              ),
                              SizedBox(width: 16.w),
                              Text('Notification',
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              const Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? TIconColorTheme.iconColorDark
                                    : TIconColorTheme.iconColorLight,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 14.h),
                  Container(
                    height: 162.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
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
                              Text('Dark Mode',
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              CupertinoSwitch(
                                value: _switchValue,
                                activeColor: purpleColor,
                                onChanged: (value) {
                                  setState(() {
                                    _switchValue = value;
                                    Get.changeThemeMode(value
                                        ? ThemeMode.dark
                                        : ThemeMode.light); // Change theme mode
                                  });
                                },
                              )
                            ]),
                        const Divider(),
                        SizedBox(height: 16.h),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Currency (Primary & Secondary) ',
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              Text('USD & BTC',
                                  style: TextStyle(
                                      color: greyColor,
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Inter')),
                            ]),
                        // SizedBox(height: 6.h),
                        const Divider(),
                        // SizedBox(height: 6.h),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Language',
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              Text('English',
                                  style: TextStyle(
                                      color: greyColor,
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Inter')),
                            ]),
                      ],
                    ),
                  ),
                  SizedBox(height: 23.h),
                  Text('Other', style: Theme.of(context).textTheme.titleMedium),
                  SizedBox(height: 18.h),
                  Container(
                    height: 124.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Theme.of(context).brightness == Brightness.light
                            ? TColorTheme.backgroundColorLight
                            : TColorTheme.backgroundColorDark,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Privacy Policy',
                            style: Theme.of(context).textTheme.titleMedium),
                        // const SizedBox(height: 5),
                        const Divider(),
                        // const SizedBox(height: 5),
                        Text('Term of Service',
                            style: Theme.of(context).textTheme.titleMedium),
                        SizedBox(height: 4.h),
                        const Divider(),
                        // const SizedBox(height: 5),
                        Text('FAQ',
                            style: Theme.of(context).textTheme.titleMedium),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.white,
                            surfaceTintColor: Colors.transparent,
                            title: const Center(
                                child: Text(
                              "Logout",
                              style: TextStyle(color: blackColor),
                            )),
                            content: const Text(
                                "Are you sure you want to sign out?",
                                style: TextStyle(color: greyColor)),
                            actions: [
                              SizedBox(height: 50.h),
                              Container(
                                width: 109.w,
                                height: 32.h,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Center(
                                    child: Text('Cancel',
                                        style: TextStyle(color: Colors.blue),
                                        textAlign: TextAlign.center)),
                              ),
                              SizedBox(
                                width: 109.w,
                                height: 32.h,
                                child: InkWell(
                                    onTap: () {
                                      Get.to(() => const WelcomeBackScreen());
                                    },
                                    child: reusableButton(text: 'Logout')),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: reusableButton(text: 'Sign Out'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
