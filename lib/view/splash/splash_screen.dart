import 'dart:async';
import 'package:global_currency/view/onboarding%20screens/onboarding_screens.dart';
import 'package:global_currency/view/trading%20screens/main_home_screen.dart';

import '../../utils/app_urls.dart';
import '../home_activity.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                const OnboardingScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset('assets/images/splash.gif',fit: BoxFit.cover)),
    );
  }
}
