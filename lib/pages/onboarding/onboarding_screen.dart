import 'package:flutter/material.dart';
import 'package:food_delivery/constants/images_strings.dart';
import 'package:food_delivery/widgets/onboarding_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        OnboardView(
          title: "All your favorites",
          description:
              "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep",
          imagePath: TImages.onboarding1,
        ),
        OnboardView(
          title: "Free delivery offers",
          description:
              "Fast food delivery to your home, office wherever you are",
          imagePath: TImages.onboarding2,
        ),
        OnboardView(
          title: "Order from choosen chef",
          description:
              "Real time tracking of your food on the app once you placed the order",
          imagePath: TImages.onboarding3,
        ),
        OnboardView(
          title: "Easy Payments",
          description:
              "Enjoy seamless and secure payment options with our app for a hassle-free checkout experience",
          imagePath: TImages.onboarding4,
        ),
      ],
    );
  }
}
