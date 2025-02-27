import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:event_trick/helpers/enums.dart';
import 'package:event_trick/helpers/shared.dart';
import 'package:event_trick/home_page.dart';
import 'package:event_trick/onboarding/onboarding_page.dart';
import 'package:event_trick/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
   void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Shared.getBOOL(key: SharedKeys.islastOnBoarding) ? Navigator.pushNamedAndRemoveUntil(
        context,
        Routes.home,
        (route) => false,

      ):
      Navigator.pushNamedAndRemoveUntil(
        context,
        Routes.onboarding,
        (route) => false,
      );
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/splash_background.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    width: 30.sp,
                    'assets/images/black-logo.png',
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 35.0,
                      color: Colors.black,
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        WavyAnimatedText('Event Tick'),
                      ],
                      isRepeatingAnimation: false,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
