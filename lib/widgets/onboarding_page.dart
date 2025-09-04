import 'package:flutter/material.dart';
import 'package:food_delivery/constants/colors.dart';
import 'package:food_delivery/constants/sizes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class OnboardView extends StatefulWidget {
  final String title;
  final String description;
  final String imagePath;

  const OnboardView({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Spacer(),
            Container(
              padding: const EdgeInsets.all(30),
              height: 300,
              child: Lottie.asset(widget.imagePath, fit: BoxFit.cover),
            ),
            const SizedBox(height: 67),
            Text(
              widget.title,
              style: GoogleFonts.sen(
                fontSize: TSizes.onboardTitleSize,
                fontWeight: FontWeight.bold,
                color: TColors.cardTitle,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              widget.description,
              textAlign: TextAlign.center,
              style: GoogleFonts.sen(
                fontSize: TSizes.regularTextSize,
                color: TColors.textColor,
                letterSpacing: 0.5,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'smooth transition',
              style: GoogleFonts.sen(color: TColors.lightGray),
            ),
            const SizedBox(height: 69),
            Container(
              width: double.infinity,
              height: 62,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: TColors.primary,
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(TColors.primary),
                  padding: WidgetStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  ),

                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: Text(
                  "Next".toUpperCase(),
                  style: GoogleFonts.sen(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: Text(
                "Skip",
                style: GoogleFonts.sen(color: Color(0xFF646982), fontSize: 16),
              ),
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
