import 'package:dev_mate/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:dev_mate/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:dev_mate/src/constants/colors.dart';
import 'package:dev_mate/src/constants/image_string.dart';
import 'package:dev_mate/src/constants/sizes.dart';
import 'package:dev_mate/src/constants/text_string.dart';
import 'package:dev_mate/src/features/authentication/screens/login/login_screen.dart';
import 'package:dev_mate/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import '../../controllers/fade_in_animation_controller.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();

    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
        body: Stack(
          children: [
            TFadeInAnimation(
              durationInMs: 3000,
              animate: TAnimatePosition(
                  bottomAfter: 0,
                  bottomBefore: -100,
                  topBefore: 0,
                  topAfter: 0,
                  rightBefore: 0,
                  rightAfter: 0,
                  leftBefore: 0,
                  leftAfter: 0),
              child: Container(
                padding: const EdgeInsets.all(tDefaultSize),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: const AssetImage(tWelcomeImage1),
                      height: height * 0.6,
                    ),
                    Column(
                      children: [
                        Text(
                          tWelcomeTitle,
                          style: Theme.of(context).textTheme.headline4,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          tWelcomeSubTitle,
                          style: Theme.of(context).textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                              onPressed: () =>
                                  Get.to(() => const LoginScreen()),
                              child: Text(tLogin.toUpperCase())),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: ElevatedButton(
                              onPressed: () =>
                                  Get.to(() => const SignUpScreen()),
                              child: Text(tSignUp.toUpperCase())),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
