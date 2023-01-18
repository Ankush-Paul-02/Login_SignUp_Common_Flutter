import 'package:dev_mate/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common_widgets/fade_in_animation/animation_design.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/image_string.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_string.dart';
import '../../controllers/fade_in_animation_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.center,
          children: [
            TFadeInAnimation(
              durationInMs: 1600,
              animate: TAnimatePosition(
                  topAfter: -5,
                  topBefore: -100,
                  leftAfter: -5,
                  leftBefore: -100),
              child: const Image(
                height: 120,
                width: 120,
                image: AssetImage(tSplashIcon),
              ),
            ),
            TFadeInAnimation(
              durationInMs: 1600,
              animate: TAnimatePosition(
                  topBefore: 120,
                  topAfter: 120,
                  leftAfter: tDefaultSize,
                  leftBefore: -100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tAppName,
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: Colors.black),
                  ),
                  Text(
                    tAppTagLine,
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: Colors.black54),
                  )
                ],
              ),
            ),
            TFadeInAnimation(
              durationInMs: 1600,
              animate: TAnimatePosition(bottomAfter: 80, bottomBefore: -200),
              child: Container(
                height: 500,
                width: 500,
                child: Image.asset(tSplashImage),
              ),
            ),
            TFadeInAnimation(
              durationInMs: 1600,
              animate: TAnimatePosition(
                  bottomAfter: 40,
                  bottomBefore: 0,
                  rightAfter: tDefaultSize,
                  rightBefore: tDefaultSize),
              child: Container(
                child: Container(
                  width: tSplashContainerSize,
                  height: tSplashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: tPrimaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
