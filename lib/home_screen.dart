
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:masrofy/core/themes/theme_mode_provider.dart';

import 'package:masrofy/core/widgets/custom_buttons.dart';
import 'package:masrofy/core/themes/app_sizes.dart';
import 'package:go_router/go_router.dart';
import 'package:masrofy/core/routes/app_routes.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text('appTitle').tr(),
        actions: [
          IconButton(
            icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),

            onPressed: () {
              ref.read(themeModeProvider.notifier).toggleThemeMode();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'description',
              style: Theme.of(context).textTheme.bodyMedium,
            ).tr(),
          ),
          SizedBox(height: AppSizes.m),
          Padding(
            padding: EdgeInsets.all(AppSizes.screenPadding),
            child: CustomButton(
              text: "changeLanguage".tr(),
              onPressed: () {
                context.setLocale(
                  context.locale.languageCode == 'en'
                      ? Locale('ar')
                      : Locale('en'),
                );
              },
              variant: ButtonVariant.outlined,
            ),
          ),
          SizedBox(height: AppSizes.m),
          CustomButton(
            text: "Go to Settings",
            onPressed: () {
              context.go(AppRoutes.settings);
            },
            variant: ButtonVariant.primary,
          ),
        ],
      ),
    );
  }
}
