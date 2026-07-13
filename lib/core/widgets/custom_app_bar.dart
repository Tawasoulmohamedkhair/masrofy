import 'package:flutter/material.dart';
import 'package:masrofy/core/extensions/build_context.dart';
import 'package:masrofy/core/themes/app_sizes.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, this.icon1, this.icon2});
  final String title;
  final IconData? icon1;
  final IconData? icon2;

  @override
  Widget build(BuildContext context) {
    final iconColor = context.colorScheme.onSurface;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(icon1, color: iconColor, size: AppSizes.iconM),
        ),
        Text(title),
        IconButton(
          onPressed: () {},
          icon: Icon(icon2, color: iconColor, size: AppSizes.iconM),
        ),
      ],
    );
  }
}
