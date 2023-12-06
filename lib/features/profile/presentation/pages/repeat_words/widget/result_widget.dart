import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqro/config/theme/app_colors.dart';
import 'package:iqro/config/theme/sized_func.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 0.0),
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 0.0),
              trackHeight: 2.27),
          child: Slider(
            min: 0,
            max: 100,
            value: 60.0,
            onChanged: (value) {},
            activeColor: AppColors.bgColor,
            inactiveColor: AppColors.grey,
          ),
        ),
        sizeVertical(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.check, color: AppColors.green, size: 20),
                const Text(
                  ":5",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey),
                ),
                sizeHorizontal(20),
                const Icon(Icons.close, color: AppColors.red, size: 20),
                const Text(
                  ":5",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey),
                ),
              ],
            ),
            const Row(
              children: [
                Icon(Icons.favorite_outline, size: 20, color: AppColors.grey),
                Icon(Icons.favorite_outline, size: 20, color: AppColors.red),
                Icon(Icons.favorite_outline, size: 20, color: AppColors.red)
              ],
            ),
            SvgPicture.asset("assets/images/warning_icon.svg"),
          ],
        ),
      ],
    );
  }
}
