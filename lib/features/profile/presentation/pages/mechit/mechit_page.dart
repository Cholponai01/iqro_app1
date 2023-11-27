import 'package:flutter/material.dart';
import 'package:iqro/config/theme/app_colors.dart';

class MechitPage extends StatefulWidget {
  const MechitPage({super.key});

  @override
  State<MechitPage> createState() => _MechitPageState();
}

class _MechitPageState extends State<MechitPage> {
  var theme = ThemeData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: const Text("Мечеттерди издөө",
            style: TextStyle(color: AppColors.white)),
        backgroundColor: AppColors.bgColor,
      ),
    );
  }
}
