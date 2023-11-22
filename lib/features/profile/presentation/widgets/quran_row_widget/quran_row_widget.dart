import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqro/config/theme/app_colors.dart';

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
    var theme = ThemeData();
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              SvgPicture.asset('assets/images/muslim.svg'),
              Text(widget.number.toString(),
                  style: theme.textTheme.titleSmall
                      ?.copyWith(color: AppColors.white)),
            ],
          ),
          const SizedBox(
            width: 7,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: theme.textTheme.bodyLarge
                      ?.copyWith(color: AppColors.white),
                ),
                Text(
                  widget.subTitle,
                  style: theme.textTheme.titleMedium
                      ?.copyWith(color: AppColors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
