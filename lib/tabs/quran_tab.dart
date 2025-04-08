import 'package:flutter/material.dart';
import 'package:islami/common/app_assets.dart';
import 'package:islami/widgets/background_gradient_and_tab_details.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return BackgroundGradientAndTabDetails(
        backgroundImage: AppImages.homeTabBackground,
        child: Column(
          children: [
            Container(
              height: 20,
              width: 20,
              color: Colors.red,
            )
          ],
        ),
        distanceBetweenIslamiLogoAndTabDetails: height * 0.162 + 20);
  }
}
