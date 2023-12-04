import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqro/config/theme/app_colors.dart';
import 'package:iqro/config/theme/sized_func.dart';

class QuranRowWidget extends StatefulWidget {
  const QuranRowWidget(
      {super.key,
      required this.number,
      required this.title,
      required this.subTitle});
  final int number;
  final String title;
  final String subTitle;

  @override
  State<QuranRowWidget> createState() => _QuranRowWidgetState();
}

class _QuranRowWidgetState extends State<QuranRowWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              SvgPicture.asset('assets/images/muslim.svg'),
              Text(
                widget.number.toString(),
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white),
              ),
            ],
          ),
          sizeVertical(7.0),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white),
                ),
                Text(
                  widget.subTitle,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
