import 'package:global_currency/view/create_password.dart';
import 'package:global_currency/widgets/button_widget.dart';
import 'package:global_currency/widgets/textfield_widget.dart';

import '../../controller/controller.dart';
import '../../utils/app_urls.dart';
import '../../widgets/app_bar.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final Controller controller=Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: secondAppbar(
            title: '',
            onpress: (){
              Get.back();
            },
          )),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 34.w),
            child: Column(
              children: [
                SizedBox(height: 30.h),
                Image.asset(lock,width: 200.sp),
                Text('Forgot Password?',style: Theme.of(context).textTheme.headlineLarge),
                Text('Please enter your email to receive a link to reset your password.',style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center),
             SizedBox(height: 24.h),
                Obx(()=>
                    reusableTextField(label: 'Cynderella_joseph@gmail.com',obscuretext: controller.isHidden.value,suffixIcon: InkWell(
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
                        )),),
                ),
                SizedBox(height: 24.h),
                InkWell(
                    onTap: (){
                      Get.to(const CreatePasswordScreen());
                    },
                    child: reusableButton(text: 'Confirm Email'))
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
