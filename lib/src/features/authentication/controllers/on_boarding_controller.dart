import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_string.dart';
import '../../../constants/text_string.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_boarding/on_boarding_page_widget.dart';
import '../screens/welcome_screen/welcome_screen.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
        model: OnBoardingModel(
            image: tOnBoardingImage1,
            title: tBoardingTitle1,
            subTitle: tBoardingSubTitle1,
            counterText: tBoardingCounter1,
            bgColor: tOnBoardingPage1Color)),
    OnBoardingPageWidget(
        model: OnBoardingModel(
            image: tOnBoardingImage2,
            title: tBoardingTitle2,
            subTitle: tBoardingSubTitle2,
            counterText: tBoardingCounter2,
            bgColor: tOnBoardingPage2Color)),
    OnBoardingPageWidget(
        model: OnBoardingModel(
            image: tOnBoardingImage3,
            title: tBoardingTitle3,
            subTitle: tBoardingSubTitle3,
            counterText: tBoardingCounter3,
            bgColor: tOnBoardingPage3Color))
  ];

  onPageChangeCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;

  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  // skip() => controller.jumpToPage(page: 2);
  skip() => Get.to(WelcomeScreen());
}
