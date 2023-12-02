import 'package:flutter/material.dart';
import 'package:iqro/config/theme/app_colors.dart';
import 'package:iqro/config/theme/sized_func.dart';
import 'package:iqro/features/profile/presentation/pages/repeat_words/widget/result_widget.dart';

class FindTheWordsPage extends StatefulWidget {
  const FindTheWordsPage({super.key});

  @override
  State<FindTheWordsPage> createState() => _FindTheWordsPageState();
}

class _FindTheWordsPageState extends State<FindTheWordsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Сөздөрдү тап",
          style: TextStyle(
              color: AppColors.white,
              fontSize: 17,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: AppColors.bgColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(children: [
          const ResultWidget(),
          sizeVertical(127),
          const Text(
            "Мерхаба",
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w700,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: AppColors.bgColor,
                  )),
              child: const Center(
                child: Text("مرحبًا",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w400,
                    )),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
