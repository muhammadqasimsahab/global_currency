import 'package:flutter_svg/flutter_svg.dart';
import 'package:global_currency/utils/app_urls.dart';
import 'package:global_currency/widgets/social_button.dart';

import '../widgets/app_bar.dart';
import 'auth/signup_activty.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: appbar(
                title: 'Skip',
                icon: Icons.arrow_forward,
                onpress: () {
                  Get.to(() => const SignUpScreen());
                })),
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(applogo, width: 111.w, height: 111.h),
                SizedBox(height: 8.h),
                Text('Welcome to Global Currency',
                    style: Theme.of(context).textTheme.headlineLarge),
                SizedBox(height: 4.h),
                Text('Your Gateway to the Future of Finance',
                    style: Theme.of(context).textTheme.titleLarge),
                SizedBox(height: 110.h),
                InkWell(
                  onTap: () {
                    Get.to(const SignUpScreen());
                  },
                  child: Container(
                    height: 56.h,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 1, color: greyColor)),
                    child: Row(
                      children: [
                        const Icon(Icons.mail_outline, color: greyColor),
                        SizedBox(width: 16.h),
                        Text('Continue with Email & Password',
                            style: TextStyle(
                                color: greyColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Row(
                  children: [
                    Container(
                        width: 140,
                        height: 1,
                        color: greyColor,
                        margin: EdgeInsets.symmetric(horizontal: 10.w)),
                    const Text('OR', style: TextStyle(color: greyColor)),
                    Container(
                        width: 140,
                        height: 1,
                        color: greyColor,
                        margin: EdgeInsets.symmetric(horizontal: 10.w)),
                  ],
                ),
                SizedBox(height: 16.h),
                socialButton(image: google, buttonText: 'Continue with Google'),
                SizedBox(height: 8.h),
                socialButton(image: apple, buttonText: 'Continue with Apple'),
                SizedBox(height: 45.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("By Proceeding, You agree to Global Currency's",
                        style: Theme.of(context).textTheme.bodyMedium),
                    Row(
                      children: [
                        // Text('Terms of Service',style: TextStyle(color: Colors.red,fontSize: 14)),
                        const GradientText(
                          'Terms of Service',
                          style: TextStyle(color: Colors.red, fontSize: 14),
                          gradient: LinearGradient(colors: [
                            Color(0xff5FB1FF),
                            Color(0xffFE60F7),
                          ]),
                        ),
                        Text(
                          ' and',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const GradientText(
                          ' Privacy Policy',
                          style: TextStyle(color: Colors.red, fontSize: 14),
                          gradient: LinearGradient(colors: [
                            Color(0xff5FB1FF),
                            Color(0xffFE60F7),
                          ]),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
