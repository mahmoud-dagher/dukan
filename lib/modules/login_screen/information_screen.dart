import 'package:dukan/Shared/components/buttons.dart';
import 'package:dukan/Shared/components/space_widget.dart';
import 'package:dukan/Shared/components/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          VerticalSpace(10),
          CustomTextFormField(
            inputType: TextInputType.name,
            text: 'Enter your name',
            prefixIcon: FontAwesomeIcons.user,
          ),
          VerticalSpace(2),
          CustomTextFormField(
            inputType: TextInputType.phone,
            text: 'Enter Phone',
            prefixIcon: FontAwesomeIcons.phone,
          ),
          VerticalSpace(2),
          CustomTextFormField(
            inputType: TextInputType.phone,
            text: 'Enter your address',

            maxLines: 5,
          ),

          VerticalSpace(5),
          GeneralButton(onTap: () {}, text: 'Login'),
        ],
      ),
    );
  }
}
