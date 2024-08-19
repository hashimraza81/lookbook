import 'package:flutter/material.dart';
import 'package:lookbook/utils/components/constant/app_images.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppImages.splash,
              fit: BoxFit.cover,
            ),
          ),
          const Positioned.fill(
            child: Column(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
