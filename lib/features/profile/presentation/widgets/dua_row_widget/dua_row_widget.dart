import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqro/config/theme/app_colors.dart';
import 'package:iqro/config/theme/sized_func.dart';

class DuaRowWidget extends StatefulWidget {
  const DuaRowWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<DuaRowWidget> createState() => _DuaRowWidgetState();
}

class _DuaRowWidgetState extends State<DuaRowWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Row(
        children: [
          SvgPicture.asset('assets/dua_svg/home.svg'),
          sizeHorizontal(8.0),
          Text(
            widget.title,
            style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: AppColors.white),
          ),
        ],
      ),
    );
  }
}
