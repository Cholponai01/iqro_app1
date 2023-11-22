import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iqro/config/theme/app_colors.dart';
import 'package:iqro/features/profile/presentation/pages/mechit/mechit_page.dart';
import 'package:iqro/features/profile/presentation/pages/premium/premium_page.dart';
import 'package:iqro/features/profile/presentation/pages/quran/quran_page.dart';
import 'package:iqro/features/profile/presentation/pages/tadjvid/tadjvid_page.dart';
import 'package:iqro/features/profile/presentation/widgets/home_screen_widgets/time_container.dart';
import 'package:iqro/features/profile/data/models/profile_presenter_model/profile_presenter.dart';

enum PresenterPage {
  tadjvidPage,
  quranPage,
  mechitPage, /* diğer sayfalar */
}

void _navigateToPage(BuildContext context, PresenterPage page) {
  switch (page) {
    case PresenterPage.tadjvidPage:
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const TadjvidPage()));
      break;
    case PresenterPage.quranPage:
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const QuranPage()));
      break;
    case PresenterPage.mechitPage:
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MechitPage()));
      break;
    // Diğer sayfalar için de aynı şekilde devam edebilirsiniz
    // ...
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProfilePresenter> profilePresenter = profilePresenterList;
  @override
  Widget build(BuildContext context) {
    var theme = ThemeData();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.bgColor,
          title: Padding(
            padding: const EdgeInsets.only(
              left: 172,
            ),
            child: Container(
              width: 134,
              height: 26,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.white),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PremiumPage(),
                        ));
                  },
                  child: const Text("Премиум",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w700)),
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 11),
              child: Row(
                children: [
                  SvgPicture.asset("assets/images/bell.svg"),
                  const SizedBox(
                    width: 14,
                  ),
                  SvgPicture.asset("assets/images/gearshape.svg"),
                ],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 25, right: 19),
                child: Container(
                  width: double.infinity,
                  height: 133,
                  decoration: BoxDecoration(
                    color: AppColors.bgColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 174,
                              child: Text(
                                "Ислам того,кто не причиняет другим мусульманам вреда своим языком и своими руками,является наилучшим.",
                                style: theme.textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.white,
                                    height: 0),
                                maxLines: 4,
                              ),
                            ),
                            // const SizedBox(
                            //   width: 3,
                            // ),
                            SizedBox(
                              width: 109,
                              child: Image.asset("assets/images/islam.png"),
                            )
                          ]),
                    ),
                  ),
                ),
              ),
              //Slider
              const SizedBox(
                height: 25,
              ),
              Text(
                'БИШКЕК',
                style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700, color: AppColors.bgColor),
              ),
              Text(
                '12:00',
                style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700, color: AppColors.bgColor),
              ),
              const SizedBox(
                height: 17,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 53, right: 53),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TimeContainer(
                        imagePath: 'assets/images/moon-half.svg',
                        title: '04:52'),
                    TimeContainer(
                        imagePath: 'assets/images/sunrise.svg', title: '06:31'),
                    TimeContainer(
                        imagePath: 'assets/images/sunrise-2.svg',
                        title: '01:00'),
                    TimeContainer(
                        imagePath: 'assets/images/sunrise-up.svg',
                        title: '16:38'),
                    TimeContainer(
                        imagePath: 'assets/images/sunset.svg', title: '19:29'),
                    TimeContainer(
                        imagePath: 'assets/images/moon-stars.svg',
                        title: '21:02'),
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 22, bottom: 113, right: 21),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  ),
                  itemCount: profilePresenter.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 110,
                      height: 110,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.bgColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 15, 5, 15),
                        child: GestureDetector(
                          onTap: () {
                            // Tıklama işlemi
                            _navigateToPage(
                                context, PresenterPage.values[index]);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: SvgPicture.asset(
                                  'assets/profile_presenter/${profilePresenter[index].image}.svg',
                                  width: 80,
                                  height: 59,
                                ),
                              ),
                              FittedBox(
                                child: Text(profilePresenter[index].name,
                                    style: theme.textTheme.bodyMedium
                                        ?.copyWith(color: AppColors.white)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
