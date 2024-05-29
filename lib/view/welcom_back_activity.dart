import '../controller/controller.dart';
import '../utils/app_urls.dart';
import '../widgets/app_bar.dart';
import '../widgets/button_widget.dart';
import '../widgets/social_button.dart';
import '../widgets/textfield_widget.dart';
import 'auth/forgot_password.dart';
import 'auth/signup_activty.dart';
import 'trading screens/main_home_screen.dart';

class WelcomeBackScreen extends StatefulWidget {
  const WelcomeBackScreen({super.key});

  @override
  State<WelcomeBackScreen> createState() => _WelcomeBackScreenState();
}

class _WelcomeBackScreenState extends State<WelcomeBackScreen> {
  final Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: InkWell(
              onTap: () {
                Get.to(() => const SignUpScreen());
              },
              child: secondAppbar(
                title: 'Welcome Back',
              ))),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 19.h),
              Text(
                'Email',
                style: TextStyle(
                    color: blackColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 2.h),
              const reusableTextField(label: 'Email'),
              SizedBox(height: 10.h),
              Text(
                'Password',
                style: TextStyle(
                    color: blackColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 2.h),
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
              SizedBox(height: 5.h),
              Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                      onTap: () {
                        Get.to(const ForgotPasswordScreen());
                      },
                      child: const GradientText(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 13,
                        ),
                        gradient: LinearGradient(colors: [
                          Color(0xff5FB1FF),
                          Color(0xffFE60F7),
                        ]),
                      ))),
              SizedBox(height: 39.h),
              InkWell(
                  onTap: () {
                    Get.to(() => const TradingHomeScreen());
                  },
                  child: reusableButton(text: 'Login')),
              SizedBox(height: 22.h),
              Row(
                children: [
                  Container(
                    width: 140,
                    height: 1,
                    color: greyColor,
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                  ),
                  const Text(
                    'OR',
                    style: TextStyle(color: greyColor),
                  ),
                  Container(
                    width: 130,
                    height: 1,
                    color: greyColor,
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              socialButton(image: google, buttonText: 'Continue with Google'),
              SizedBox(height: 8.h),
              socialButton(image: apple, buttonText: 'Continue with Apple'),
              SizedBox(height: 45.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("By Proceeding, You agree to Global Currency's",
                      style: Theme.of(context).textTheme.labelLarge,
                      textAlign: TextAlign.center),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const GradientText(
                        'Terms of Service',
                        style: TextStyle(
                            color: Color(0xff5FB1FF),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        gradient: LinearGradient(colors: [
                          Color(0xff5FB1FF),
                          Color(0xffFE60F7),
                        ]),
                      ),
                      Text(' and',
                          style: Theme.of(context).textTheme.labelLarge),
                      const GradientText(
                        ' Privacy Policy',
                        style: TextStyle(
                            color: Color(0xff5FB1FF),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        gradient: LinearGradient(colors: [
                          Color(0xff5FB1FF),
                          Color(0xffFE60F7),
                        ]),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 13.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t have an account? ',
                      style: Theme.of(context).textTheme.titleSmall),
                  InkWell(
                      onTap: () {
                        Get.to(const WelcomeBackScreen());
                      },
                      child: GradientText(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14.sp,
                          decoration: TextDecoration.underline,
                        ),
                        gradient: const LinearGradient(colors: [
                          Color(0xff5FB1FF),
                          Color(0xffFE60F7),
                        ]),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    controller.isHidden.value = !controller.isHidden.value;
  }
}
