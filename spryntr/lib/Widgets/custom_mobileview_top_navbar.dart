import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spryntr/Utils/colors.dart';

import '../Utils/images_path.dart';

class CustomMobileViewTopNavBar extends StatelessWidget {
  const CustomMobileViewTopNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: CustomColors.kLightgreyColor.withOpacity(0.6),
      centerTitle: true,
      // leading:
      title: SvgPicture.asset(CustomAssets.kSpryntrlogo),
      actions: [
        SvgPicture.asset(CustomAssets.kNotificationIcon),
        Image.asset(CustomAssets.kAvatar)
      ],
    );
  }
}
