import 'package:flutter/material.dart';
import 'package:masrofy/core/extensions/build_context.dart';
import 'package:masrofy/core/themes/app_sizes.dart';

class AppBarDebts extends StatelessWidget {
  const AppBarDebts({super.key});

  @override
  Widget build(BuildContext context) {
    final iconColor = context.colorScheme.onSurface;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_sharp,
            color: iconColor,
            size: AppSizes.iconM,
          ),
        ),
        Text('الديون'),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add, color: iconColor, size: AppSizes.iconM),
        ),
      ],
    );
  }
}
