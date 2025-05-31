import 'package:dukan/Shared/components/buttons.dart';
import 'package:dukan/Shared/components/space_widget.dart';
import 'package:dukan/constants/colors.dart';
import 'package:dukan/models/size_config/size_config.dart';
import 'package:dukan/modules/login_screen/loginscreen.dart';

import 'package:dukan/widgets/custom_indicator.dart';
import 'package:dukan/widgets/page_view_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key, required this.pageController});
  final PageController? pageController;

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  void initState() {
    super.initState();
    widget.pageController?.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: widget.pageController,
            children: const [
              PageViewItem(
                title: 'E Shopping',
                description: 'Explore top organic fruits & grab items',
                image: 'assets/images/onboarding1.png',
              ),
              PageViewItem(
                title: 'Delivery on the way',
                description: 'Get your order by speed delivery',
                image: 'assets/images/onboarding2.png',
              ),
              PageViewItem(
                title: 'Delivery arrived',
                description: 'Order is arrived',
                image: 'assets/images/onboarding3.png',
              ),
            ],
          ),
          Visibility(
            visible:
                (widget.pageController?.hasClients == true)
                    ? (widget.pageController?.page == 2 ? false : true)
                    : false,
            child: Positioned(
              top: SizeConfig.defaultSize! * 10,
              right: 32,
              child: TextButton(
                onPressed: () {
                  Get.to(
                    () => LoginScreen(),
                    transition: Transition.rightToLeft,
                    duration: Duration(milliseconds: 500),
                  );
                },
                child: Text(
                  'Skip',
                  style: TextStyle(fontSize: 14, color: skipButtonText),
                ),
              ),
            ),
          ),
          const VerticalSpace(2.5),
          Positioned(
            left: 0,
            right: 0,
            bottom: SizeConfig.defaultSize! * 20,
            child: CustomIndicator(
              dotIndex:
                  widget.pageController?.hasClients == true
                      ? widget.pageController?.page ?? 0
                      : 0,
            ),
          ),
          Positioned(
            bottom: SizeConfig.defaultSize! * 10,
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            child: GeneralButton(
              onTap: () {
                if (widget.pageController?.page != null &&
                    widget.pageController!.page! < 2) {
                  widget.pageController!.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                } else {
                  Get.to(
                    () => LoginScreen(),
                    transition: Transition.rightToLeft,
                    duration: Duration(milliseconds: 500),
                  );
                }
              },
              text:
                  (widget.pageController?.hasClients == true
                      ? (widget.pageController?.page == 2
                          ? 'Get Started'
                          : 'Next')
                      : 'Next'),
            ),
          ),
        ],
      ),
    );
  }
}
