import 'package:flutter/material.dart';
import 'package:masrofy/core/themes/app_colors.dart';

class BuildTabItem extends StatelessWidget {
  const BuildTabItem({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(color: AppColors.primaryLight, width: 2.5),
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: AppColors.primary,
      unselectedLabelColor: AppColors.grey400,
      labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      unselectedLabelStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      tabs: const [
        Tab(text: 'كل الديون'),
        Tab(text: 'متبقي'),
        Tab(text: 'مسددة'),
      ],
    );
  }
}
