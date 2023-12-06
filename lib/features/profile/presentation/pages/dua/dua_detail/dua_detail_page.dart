import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqro/config/theme/app_colors.dart';
import 'package:iqro/config/theme/sized_func.dart';

class DuaDetailPage extends StatefulWidget {
  const DuaDetailPage({super.key, required this.title});
  final String? title;

  @override
  State<DuaDetailPage> createState() => _DuaDetailPageState();
}

class _DuaDetailPageState extends State<DuaDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Дубалардын тизмеси"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 18, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.bgColor,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 11, bottom: 11),
                    child: Center(
                      child: Text(
                        "Үйдөн чыгар алдында дуба кылуу",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white),
                      ),
                    ),
                  ),
                ),
              ),
              sizeVertical(18.0),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23.9),
                  color: AppColors.bgColor,
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(10, 25, 10, 25),
                  child: Text(
                    "اللّهُـمَّ إِنِّـي أَعـوذُ بِكَ أَنْ أَضِـلَّ أَوْ أُضَـل ، أَوْ أَزِلَّ أَوْ أُزَل ، أَوْ أَظْلِـمَ أَوْ أَُظْلَـم ، أَوْ أَجْهَلَ أَوْ يُـجْهَلَ عَلَـيّ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white),
                  ),
                ),
              ),
              sizeVertical(18.0),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.bgColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 15, 30),
                  child: Column(
                    children: [
                      const Text(
                        "Окуулушу: Аллахумма, ин-ни а'узу би-кя ан адилля ау удалля, ау азилля, ау узалля, ау азлима, ау узляма, ау аджхаля, ау йуджхаля 'аляййа \n \nМааниси: Оо Аллахым, чындыгында мен адашуудан же адашуудан, өзүмдөн жаңылып калуудан жана катага мажбурлануудан, зулумдук кылуудан, адилетсиздикке кабылуудан, наадандыктан Сага паана тилейм. , жана билбестикте сакталып калуудан.  ",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.white),
                      ),
                      sizeVertical(12.0),
                      Align(
                        alignment: Alignment.bottomRight,
                        child:
                            SvgPicture.asset("assets/dua_svg/icon_arrow.svg"),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  SliderTheme(
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
                  const Padding(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "00:36",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "05:39",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.skip_previous,
                            size: 30.0, color: AppColors.grey),
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                      ),
                      Center(
                        child: IconButton(
                          icon: const Icon(
                            Icons.play_circle_filled,
                            size: 61,
                            color: AppColors.bgColor,
                          ),
                          onPressed: () {},
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
                          splashColor: Colors.transparent),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
