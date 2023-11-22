import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqro/config/theme/app_colors.dart';

class TimeContainer extends StatelessWidget {
  const TimeContainer(
      {super.key, required this.imagePath, required this.title});
  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 35.0,
          height: 35.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.bgColor,
          ),
          child: Center(
            child: SvgPicture.asset(
              imagePath,
              width: 20.0,
              height: 20.0,
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
