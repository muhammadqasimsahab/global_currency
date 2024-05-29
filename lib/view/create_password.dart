import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:global_currency/widgets/button_widget.dart';

import '../controller/controller.dart';
import '../theme/text_themes.dart';
import '../utils/app_urls.dart';
import '../widgets/app_bar.dart';
import '../widgets/check_box.dart';
import '../widgets/textfield_widget.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  final Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: secondAppbar(
            title: '',
            onpress: () {
              Get.back();
            },
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 34.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5.h),
            Align(
                alignment: Alignment.center,
                child: Image.asset(lock, width: 200.sp)),
            SizedBox(height: 15.h),
            Text(
              'Create new password',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22.sp,
                  color: TTextTheme.getTextColor(context)),
            ),
            SizedBox(height: 5.h),
            Text(
              'Password',
              style: TextStyle(
                  color: TTextTheme.getTextColor(context),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8.h),
            Obx(
              () => reusableTextField(
                label: 'Password',
                obscuretext: controller.isHidden.value,
                suffixIcon: InkWell(
                    onTap: _togglePasswordView,
                    child: ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (Rect bounds) => const RadialGradient(
                        center: Alignment.topCenter,
                        stops: [.5, 1],
                        colors: [
                          Color(0xff5FB1FF),
                          Color(0xffFE60F7),
                        ],
                      ).createShader(bounds),
                      child: Icon(controller.isHidden.value
                          ? Icons.visibility_off_outlined
                          : Icons.visibility),
                    )),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'Confirm Password',
              style: TextStyle(
                  color: TTextTheme.getTextColor(context),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8.h),
            Obx(
              () => reusableTextField(
                label: 'New Password',
                obscuretext: controller.isHidden.value,
                suffixIcon: InkWell(
                    onTap: _togglePasswordView,
                    child: ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (Rect bounds) => const RadialGradient(
                        center: Alignment.topCenter,
                        stops: [.5, 1],
                        colors: [
                          Color(0xff5FB1FF),
                          Color(0xffFE60F7),
                        ],
                      ).createShader(bounds),
                      child: Icon(controller.isHidden.value
                          ? Icons.visibility_off_outlined
                          : Icons.visibility),
                    )),
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CheckboxWidget(controller: controller),
                Text('Remember me',
                    style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
            SizedBox(height: 10.h),
            InkWell(
                onTap: () => dialogBar(),
                child: reusableButton(text: 'Confirm Email'))
          ],
        ),
      ),
    );
  }

  Future<void> dialogBar() async {
    Get.dialog(
      AlertDialog(
        title: null,
        content: SizedBox(
          height: 310.h,
          child: Column(
            children: [
              Image.asset('assets/images/gialog.png', width: 200),
              Text(
                'Successful!',
                style: TextStyle(
                    color: TTextTheme.getTextColor(context),
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10.h),
              Text(
                  'Your account is ready to use. you will be redirected to homepage in a few second',
                  style: TextStyle(
                      color: TTextTheme.getTextColor(context),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center),
              SizedBox(height: 10.h),
              const Center(
                child: SpinKitFadingCircle(
                  color: purpleColor,
                  size: 50.0,
                ),
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
