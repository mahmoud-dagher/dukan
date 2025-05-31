import 'package:dukan/constants/colors.dart';
import 'package:dukan/models/size_config/size_config.dart';
import 'package:dukan/modules/onboarding/OnBoardingScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Splashview extends StatefulWidget {
  const Splashview({super.key});

  @override
  State<Splashview> createState() => _SplashviewState();
}

class _SplashviewState extends State<Splashview>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    );
    fadingAnimation = Tween<double>(
      begin: 0.2,
      end: 1,
    ).animate(animationController!);
    animationController?.repeat(reverse: true);
    navigateToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: defColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          FadeTransition(
            opacity: fadingAnimation!,
            child: Text(
              'Welcome To Dukan',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              'assets/images/splash_view_image.png',
              // height: 300,
              // width: 300,
              // fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

void navigateToNextView() {
  Future.delayed(Duration(seconds: 4), () {
    Get.to(
      () => OnBoardingScreen(pageController: PageController()),
      transition: Transition.fade,
    );
  });
}
