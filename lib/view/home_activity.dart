
import 'package:flutter/cupertino.dart';
import 'package:global_currency/view/welcom_activity.dart';

import '../utils/app_urls.dart';
import '../widgets/app_bar.dart';
import '../widgets/button_widget.dart';
import 'auth/signup_activty.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: appbar(title: 'Skip', icon: Icons.arrow_forward,onpress: (){ Get.to(() => const SignUpScreen());}),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(applogo, width: 111.w, height: 111.h),
                SizedBox(height: 8.h),
                Text('Just one last thing', style: Theme.of(context).textTheme.headlineLarge),
                SizedBox(height: 4.h),
                Text('Select your preference and you’re ready to go!', style: Theme.of(context).textTheme.titleLarge),
                SizedBox(height: 59.h),
                Container(
                  width: 390.w,
                  height: 168.h,
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15.0,
                        spreadRadius: 2.0,
                        offset: Offset(5.0, 5.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Dark Mode',
                            style: TextStyle(
                              color: Theme.of(context).textTheme.bodyText1!.color,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                            ),
                          ),
                          CupertinoSwitch(
                            value: _switchValue,
                            activeColor: purpleColor,
                            onChanged: (value) {
                              setState(() {
                                _switchValue = value;
                                Get.changeThemeMode(value ? ThemeMode.dark : ThemeMode.light); // Change theme mode
                              });
                            },
                          ),
                        ],
                      ),
                      const Divider(),
                      SizedBox(height: 16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Currency (Primary & Secondary) ',
                            style: TextStyle(
                              color: Theme.of(context).textTheme.bodyText1!.color,
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                            ),
                          ),
                          Text(
                            'USD & BTC',
                            style: TextStyle(
                              color: Theme.of(context).textTheme.bodyText2!.color,
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),
                      const Divider(),
                      SizedBox(height: 6.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Language',
                            style: TextStyle(
                              color: Theme.of(context).textTheme.bodyText1!.color,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                            ),
                          ),
                          Text(
                            'English',
                            style: TextStyle(
                              color: Theme.of(context).textTheme.bodyText2!.color,
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 90.h),
                InkWell(
                  onTap: () {
                    Get.to(const WelcomeScreen());
                  },
                  child: reusableButton(text: 'Lets Begin'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}