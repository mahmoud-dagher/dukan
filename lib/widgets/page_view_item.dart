import 'package:dukan/Shared/components/space_widget.dart';
import 'package:dukan/models/size_config/size_config.dart';

import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });
  final String? title;
  final String? description;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(18),
        SizedBox(
          height: SizeConfig.defaultSize! * 25,
          child: Image.asset(image!),
        ),
        const VerticalSpace(2.5),
        Text(
          title!,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: const Color(0xff2f2e41),
          ),
          textAlign: TextAlign.left,
        ),
        const VerticalSpace(1.5),
        Text(
          description!,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
            color: const Color(0xff78787c),
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
