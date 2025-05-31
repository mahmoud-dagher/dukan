import 'package:dukan/Shared/components/buttons.dart';
import 'package:dukan/Shared/components/space_widget.dart';
import 'package:dukan/constants/colors.dart';
import 'package:dukan/models/size_config/size_config.dart';
import 'package:dukan/modules/login_screen/information_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:get/route_manager.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            VerticalSpace(10),
            Positioned(
              top: SizeConfig.defaultSize! * 20,
              child: SizedBox(
                height: SizeConfig.defaultSize! * 17,
                child: Image.asset(mainLogo),
              ),
            ),
            Text(
              'Fruit Market',
              style: TextStyle(fontSize: 51, color: Color(0xff69a03a)),
            ),
            Expanded(child: SizedBox()),
            Row(
              children: [
                Flexible(
                  flex: 1,

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomIconButton(
                      text: 'Login With',
                      icon: FontAwesomeIcons.google,
                      iconColor: Color(0xFFdb3236),

                      onTap: () {
                        Get.to(
                          () => InformationScreen(),
                          duration: Duration(milliseconds: 500),
                          transition: Transition.rightToLeft,
                        );
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomIconButton(
                      text: 'Login With',
                      icon: Icons.facebook,
                      iconColor: Color(0xFF4267B2),
                      onTap: () {
                        Get.to(
                          () => InformationScreen(),
                          duration: Duration(milliseconds: 500),
                          transition: Transition.rightToLeft,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
