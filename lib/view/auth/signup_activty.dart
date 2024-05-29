import 'package:global_currency/view/welcom_activity.dart';
import 'package:global_currency/view/welcom_back_activity.dart';
import 'package:global_currency/widgets/button_widget.dart';
import 'package:global_currency/widgets/social_button.dart';

import '../../controller/controller.dart';
import '../../utils/app_urls.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/textfield_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: secondAppbar(
              title: 'Sign Up',
              onpress: () {
                Get.back();
              },
            )),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30.h),
                Text("By Proceeding, You agree to Global Currency's",
                    style: Theme.of(context).textTheme.bodyMedium),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Terms of Service',
                        style: TextStyle(color: Colors.blue, fontSize: 14)),
                    Text(' and', style: Theme.of(context).textTheme.titleLarge),
                    const Text(' Privacy Policy',
                        style: TextStyle(color: Colors.blue, fontSize: 14))
                  ],
                ),
                SizedBox(height: 19.h),
                Text('Email',
                    style: TextStyle(
                        color: blackColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600)),
                SizedBox(height: 5.h),
                const reusableTextField(label: 'Email'),
                SizedBox(height: 5.h),
                Text('Password',
                    style: TextStyle(
                        color: blackColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600)),
                SizedBox(height: 5.h),
                Obx(
                  () => reusableTextField(
                    label: 'Password',
                    obscuretext: controller.isHidden.value,
                    suffixIcon: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(controller.isHidden.value
                            ? Icons.visibility_off
                            : Icons.visibility)),
                  ),
                ),
                SizedBox(height: 48.h),
                InkWell(
                    onTap: (){
                      Get.to(()=>const WelcomeBackScreen());
                    },
                    child: reusableButton(text: 'Create Account')),
                SizedBox(height: 40.h),
                Row(
                  children: [
                    Container(
                        width: 140,
                        height: 1,
                        color: greyColor,
                        margin: EdgeInsets.symmetric(horizontal: 10.w)),
                    const Text('OR', style: TextStyle(color: greyColor)),
                    Container(
                      width: 130,
                      height: 1,
                      color: greyColor,
                      margin: EdgeInsets.symmetric(horizontal: 10.w),
                    ),
                  ],
                ),
                SizedBox(height: 6.h),
                socialButton(image: google, buttonText: 'Continue with Google'),
                SizedBox(height: 8.h),
                socialButton(image: apple, buttonText: 'Continue with Apple'),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account? ',
                        style: Get.textTheme.titleSmall),
                    InkWell(
                      onTap: () {
                        Get.to(const WelcomeBackScreen());
                      },
                      child: Text(' Login',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14.sp,
                            decoration: TextDecoration.underline,
                          )),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    controller.isHidden.value = !controller.isHidden.value;
  }
}
