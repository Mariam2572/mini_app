import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_app/core/utils/app_assets.dart';
import 'package:mini_app/helper/helper_extention.dart';

class UpgradeTitle extends StatelessWidget {
  const UpgradeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
          child: Text(
            'Upgrade Plan',
            style: context.theme.textTheme.titleLarge,
          ),
        ),
        InkWell(
          onTap: () => Navigator.pop(context),
          child: SvgPicture.asset(AppAssets.closeIcon)),
      ],
    );
  }
}
