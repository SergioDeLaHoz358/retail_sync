import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retail_sync/features/authentication/pages/login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  final currentPageIndex = 0.obs;
  // Update

  void updatePageIndicator(index) => currentPageIndex.value = index;
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
    pageController.jumpToPage(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(LoginScreen());
    } else {
      currentPageIndex.value++;
      pageController.animateToPage(currentPageIndex.value,
          duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.animateToPage(currentPageIndex.value,
        duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
    pageController.jumpToPage(2);
  }
}
