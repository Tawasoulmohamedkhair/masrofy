import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masrofy/core/constants/app_assets.dart';
import 'package:masrofy/core/extensions/num_extension.dart';
import 'package:masrofy/core/themes/app_colors.dart';
import 'package:masrofy/core/themes/app_sizes.dart';

class GoalsSummaryCard extends StatelessWidget {
  const GoalsSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: 16.allPadding,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.grey400, AppColors.grey600],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(AppSizes.rXL),
        boxShadow: [
          BoxShadow(
            // color: AppColors.income,
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              // Left side: Text
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text('إجمالي الأهداف'),
                        Image.asset(
                          AppAssets.goals,
                          width: 50.w,
                          height: 50.h,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),
                    const Text(
                      " اكتملت 4 من 5",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 90,
                    height: 90,
                    child: CircularProgressIndicator(
                      value: 0.9,
                      strokeWidth: 12,
                      backgroundColor: Color(0xFF374151),
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        AppColors.cyan,
                      ),
                    ),
                  ),

                  const Text(
                    "80%",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
