import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqro/config/theme/app_colors.dart';
import 'package:iqro/config/theme/sized_func.dart';
import 'package:iqro/features/profile/presentation/pages/repeat_words/widget/result_widget.dart';

class RepeatWordsPage extends StatefulWidget {
  const RepeatWordsPage({super.key});

  @override
  State<RepeatWordsPage> createState() => _MechitPageState();
}

class _MechitPageState extends State<RepeatWordsPage> {
  bool isMusicVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Сөз кайталоо",
            style: TextStyle(
                color: AppColors.white,
                fontSize: 17,
                fontWeight: FontWeight.w600),
          ),
          backgroundColor: AppColors.bgColor,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Column(
            children: [
              const ResultWidget(),
              sizeVertical(20),
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.bgColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset(
                      "assets/images/speaker_wave.svg",
                      width: 38,
                      height: 22,
                    ),
                  ),
                  sizeHorizontal(20),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.bgColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset(
                      "assets/images/tortoise.svg",
                      width: 38,
                      height: 22,
                    ),
                  ),
                ],
              ),
              sizeVertical(32),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.21,
                decoration: BoxDecoration(
                  color: AppColors.bgColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(22, 33, 22, 33),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20, top: 13, right: 20),
                      child: Text(
                        "Уккан сөзүңуздү микрофонду басып, кайталаңыз.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              sizeVertical(100),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isMusicVisible = !isMusicVisible;
                  });
                },
                child: SvgPicture.asset("assets/images/microphone.svg"),
              ),
              if (isMusicVisible) ...[
                sizeVertical(33),
                SvgPicture.asset("assets/images/sound.svg"),
              ]
            ],
          ),
        ));
  }
}
