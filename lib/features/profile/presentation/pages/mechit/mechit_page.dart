import 'package:flutter/material.dart';
import 'package:iqro/config/theme/app_colors.dart';
import 'package:iqro/features/profile/presentation/pages/mechit/mechit_address_model/mechit_address_model.dart';
import 'package:iqro/features/profile/presentation/widgets/mechit_row_widget/mechit_row_widget.dart';

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
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 18, top: 20, right: 17),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: mechitList.length,
                  itemBuilder: (context, index) {
                    Mechit mechit = mechitList[index];
                    return Container(
                      width: double.infinity,
                      height: 73.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: AppColors.bgColor,
                      ),
                      margin: const EdgeInsets.only(bottom: 16),
                      child: MechitRowwidget(
                        mechit: mechit,
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ));
  }
}
