import 'package:flutter/material.dart';

import '../../../common/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Widget image;

  const CustomTextField(
      {super.key, required this.hintText, required this.image});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.gold,
      style: TextStyle(
          color: AppColors.offWhite, fontSize: 16, fontWeight: FontWeight.w700),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.black.withOpacity(0.7),
        hintText: hintText,
        hintStyle: TextStyle(
            color: AppColors.offWhite,
            fontSize: 16,
            fontWeight: FontWeight.w700),
        prefixIcon: Padding(padding: const EdgeInsets.all(10), child: image),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: AppColors.gold, width: 1),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: AppColors.gold, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: AppColors.gold, width: 1),
        ),
      ),
    );
  }
}
