import 'package:flutter/material.dart';
import 'package:iqro/config/theme/app_colors.dart';

class TadjvidPage extends StatefulWidget {
  const TadjvidPage({super.key});

  @override
  State<TadjvidPage> createState() => _TadjvidPageState();
}

class _TadjvidPageState extends State<TadjvidPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.chevron_left_outlined,
            size: 40,
            color: AppColors.white,
          ),
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
      ),
    );
  }
}
