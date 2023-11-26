import 'package:flutter/material.dart';
import 'package:iqro/config/theme/app_colors.dart';
import 'package:iqro/features/profile/presentation/pages/dua/dua_detail/dua_detail_page.dart';
import 'package:iqro/features/profile/presentation/pages/dua/dua_presenter_model/dua_presenter_model.dart';
import 'package:iqro/features/profile/presentation/widgets/dua_row_widget/dua_row_widget.dart';

class HomeDuaPage extends StatelessWidget {
  const HomeDuaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Дубалардын тизмеси",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: AppColors.white,
          ),
        ),
        backgroundColor: AppColors.bgColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: DuaModel.duaNames.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DuaDetailPage(
                      title: DuaModel.duaNames[index],
                    ),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.09,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: AppColors.bgColor,
                ),
                margin: const EdgeInsets.only(bottom: 16),
                child: DuaRowWidget(
                  title: DuaModel.duaNames[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
