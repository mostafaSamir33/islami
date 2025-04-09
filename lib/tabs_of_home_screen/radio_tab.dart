import 'package:flutter/material.dart';

import '../common/app_colors.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Radio Tap',
        style: TextStyle(
            color: AppColors.white, fontSize: 30, fontWeight: FontWeight.w400),
      ),
    );
  }
}
