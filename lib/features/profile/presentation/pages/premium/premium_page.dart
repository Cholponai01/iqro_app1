import 'package:flutter/material.dart';
import 'package:iqro/config/theme/app_colors.dart';
import 'package:iqro/config/theme/sized_func.dart';
import 'package:iqro/features/profile/presentation/widgets/premium_container_widget/custom_container_akysyz.dart';
import 'package:iqro/features/profile/presentation/widgets/premium_container_widget/custom_container_premium.dart';

class PremiumPage extends StatefulWidget {
  const PremiumPage({super.key});

  @override
  State<PremiumPage> createState() => _PremiumPageState();
}

class _PremiumPageState extends State<PremiumPage> {
  @override
  Widget build(BuildContext context) {
    var theme = ThemeData();
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [Image.asset("assets/images/premiumImage.png")],
          ),
          sizeVertical(73.0),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainerAkysyz(),
                CustomContainerPremium(),
              ],
            ),
          ),
          sizeVertical(23.0),
          Text(
            "Pro версиясын акысыз 7 күн колдонуп көрүңүз",
            style: theme.textTheme.titleMedium?.copyWith(fontSize: 13),
          ),
          sizeVertical(50.0),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 44),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 0,
                  backgroundColor: AppColors.black),
              child: Text(
                "Катталыңыз",
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
          ),
          sizeVertical(20.0),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 44),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 0,
                  backgroundColor: const Color(0xffEFEFF4)),
              child: Text(
                "Жарнама менен улантуу",
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: AppColors.blue,
                ),
              ),
            ),
          ),
          sizeVertical(26.0),
          Text(
            "Условия использования",
            style: theme.textTheme.titleMedium?.copyWith(fontSize: 13),
          ),
          sizeVertical(6.0),
          Text(
            "Политика конфиденциальности",
            style: theme.textTheme.titleMedium?.copyWith(fontSize: 13),
          ),
        ],
      ),
    );
  }
}
