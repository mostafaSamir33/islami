import 'package:flutter/material.dart';

import '../common/app_colors.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Time Tap',
        style: TextStyle(
            color: AppColors.white, fontSize: 30, fontWeight: FontWeight.w400),
      ),
    );
  }
}
