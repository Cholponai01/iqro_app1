import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqro/config/theme/app_colors.dart';
import 'package:iqro/features/profile/presentation/pages/dua/dua_presenter_model/dua_presenter_model.dart';
import 'package:iqro/features/profile/presentation/pages/dua/list_dua_page/home_dua_page.dart';

enum PresenterPage {
  homeDuaPage,
  // travelDuaPage,
  // foodDuaPage,
  // nightDuaPage,
  // timeDuaPage, /* diğer sayfalar */
}

void _navigateToPage(BuildContext context, PresenterPage page) {
  switch (page) {
    case PresenterPage.homeDuaPage:
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const HomeDuaPage()));
      break;
    // case PresenterPage.travelDuaPage:
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => const TravelDuaPage()));
    //   break;
    // case PresenterPage.foodDuaPage:
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => const FoodDuaPage()));
    //   break;
    // case PresenterPage.nightDuaPage:
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => const NightDuaPage()));
    //   break;
    // case PresenterPage.timeDuaPage:
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => const TimeDuaPage()));
    //   break;
  }
}

class DuaPage extends StatefulWidget {
  const DuaPage({super.key});

  @override
  State<DuaPage> createState() => _DuaPageState();
}

class _DuaPageState extends State<DuaPage> {
  List<DuaPresenter> duaPresenter = duaPresenterList;
  @override
  Widget build(BuildContext context) {
    var theme = ThemeData();
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
        title: const Text(
          "Дуа",
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: AppColors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 21, top: 30, right: 21),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
          ),
          itemCount: duaPresenter.length,
          itemBuilder: (context, index) {
            return Container(
              width: 110,
              height: 110,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.bgColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 15, 5, 15),
                child: GestureDetector(
                  onTap: () {
                    _navigateToPage(context, PresenterPage.values[index]);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SvgPicture.asset(
                          'assets/dua_svg/${duaPresenter[index].image}.svg',
                          width: 32,
                          height: 32,
                        ),
                      ),
                      FittedBox(
                        child: Text(duaPresenter[index].name,
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
    );
  }
}
