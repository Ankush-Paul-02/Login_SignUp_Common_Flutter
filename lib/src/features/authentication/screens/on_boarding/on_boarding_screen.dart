import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import '../../../../constants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../controllers/on_boarding_controller.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final obController = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obController.pages,
            slideIconWidget: const Icon(
              CupertinoIcons.back,
              color: Colors.black,
            ),
            liquidController: obController.controller,
            onPageChangeCallback: obController.onPageChangeCallback,
            enableSideReveal: true,
          ),
          Positioned(
              bottom: 60,
              child: OutlinedButton(
                onPressed: () => obController.animateToNextSlide(),
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black26),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                    onPrimary: Colors.white),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration:
                      BoxDecoration(color: tDarkColor, shape: BoxShape.circle),
                  child: const Icon(
                    CupertinoIcons.forward,
                  ),
                ),
              )),
          Positioned(
              top: 50,
              right: 20,
              child: TextButton(
                onPressed: () => obController.skip(),
                child: const Text(
                  "Skip",
                  style: TextStyle(color: Colors.black38),
                ),
              )),
          Obx(
            () => Positioned(
                bottom: 10,
                child: AnimatedSmoothIndicator(
                  activeIndex: obController.currentPage.value,
                  effect: const WormEffect(
                      activeDotColor: Color(0xff272727), dotHeight: 5.0),
                  count: 3,
                )),
          )
        ],
      ),
    );
  }
}
