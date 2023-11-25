import 'package:flutter/material.dart';
import 'package:iqro/config/theme/app_colors.dart';
import 'package:iqro/features/profile/presentation/pages/quran/quran_sura_model/quran_sura_model.dart';
import 'package:iqro/features/profile/presentation/widgets/quran_row_widget/quran_row_widget.dart';

class QuranPage extends StatefulWidget {
  const QuranPage({super.key});

  @override
  State<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> {
  var theme = ThemeData();
  double sliderValue = 0.0;
  bool isPlaying = false;
  int selectedTextIndex = -1; // Başlangıçta hiçbir metin seçilmemiş

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
        title: const Text("Аль-Фатиха",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
            )),
        backgroundColor: AppColors.bgColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTextIndex =
                            index; // Metni tıkladığınızda index'i güncelleyin
                        isPlaying =
                            !isPlaying; // Oynatma durumunu tersine çevirin
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      height: 89.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: selectedTextIndex == index
                            ? const Color(
                                0xffFF9500) // Seçili metni sarı renkte gösterin
                            : AppColors.bgColor,
                      ),
                      margin: const EdgeInsets.only(bottom: 16),
                      child: QuranRowWidget(
                        number: QuranSuraModel.surahNumbers[index],
                        title: QuranSuraModel.surahNames[index],
                        subTitle: QuranSuraModel.surahArabic[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 9),
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 7),
                      trackHeight: 2.27),
                  child: Slider(
                    min: 0,
                    max: 100,
                    value: 10.0,
                    onChanged: (value) {},
                    activeColor: AppColors.bgColor,
                    inactiveColor: AppColors.grey,
                    thumbColor: AppColors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "00:36",
                      style:
                          theme.textTheme.titleMedium?.copyWith(fontSize: 13),
                    ),
                    Text(
                      "05:39",
                      style:
                          theme.textTheme.titleMedium?.copyWith(fontSize: 13),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 53,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 99.0,
                  right: 99.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.skip_previous,
                        size: 30.0,
                        color: AppColors.grey,
                      ),
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                    ),
                    Center(
                      child: IconButton(
                        icon: Icon(
                          isPlaying
                              ? Icons.pause_circle_filled
                              : Icons.play_circle_filled,
                          size: 61,
                          color: AppColors.bgColor,
                        ),
                        onPressed: () {
                          if (isPlaying) {
                            // Ses durdurma işlevselliğini burada ekleyin
                          } else {
                            // Ses çalma işlevselliğini burada ekleyin
                          }
                          setState(() {
                            isPlaying =
                                !isPlaying; // Oynatma durumunu tersine çevirin
                          });
                        },
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.skip_next,
                        size: 30.0,
                        color: AppColors.grey,
                      ),
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
