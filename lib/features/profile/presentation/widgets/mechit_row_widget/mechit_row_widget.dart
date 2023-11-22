import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqro/config/theme/app_colors.dart';
import 'package:iqro/features/profile/data/models/mechit_address_model/mechit_address_model.dart';
import 'package:iqro/features/profile/presentation/pages/mechit/mechit_geolocation.dart';
import 'package:iqro/features/profile/presentation/pages/mechit/mechit_search_map.dart';

class MechitRowwidget extends StatelessWidget {
  const MechitRowwidget({super.key, required this.mechit});
  final Mechit mechit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset("assets/images/stickerislamic.png"),
              const SizedBox(
                width: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 9, bottom: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mechit.name,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: AppColors.white,
                          ),
                    ),
                    Text(
                      mechit.address,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: const Color(0xff9BB6C7),
                            fontSize: 15,
                          ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Center(
              child: GestureDetector(
                  onTap: () {
                    _showBottomSheet(context);
                  },
                  child: SvgPicture.asset("assets/images/paper-plane.svg"))),
        ],
      ),
    );
  }
}

// showModalBottomSheet
void _showBottomSheet(BuildContext context) {
  var theme = ThemeData();
  showModalBottomSheet(
    backgroundColor: Colors.transparent.withOpacity(0),
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.35,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DecoratedBox(
                decoration: const BoxDecoration(
                  color: Color(0xffDCDCDD),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Center(
                          child: Text(
                        "Открыть направление внутрь",
                        style: theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w400, color: AppColors.grey),
                      )),
                      onTap: () {
                        // İç yönleri açma işlemini burada gerçekleştirin
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MechitSearchMap(),
                          ),
                        );
                      },
                    ),
                    const Divider(),
                    ListTile(
                      title: Center(
                          child: Text(
                        "Apple map",
                        style: theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w400, color: AppColors.blue),
                      )),
                      onTap: () {
                        // Apple Haritalar ile yönleri açma işlemini burada gerçekleştirin
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MechitGeolocation(),
                          ),
                        );
                      },
                    ),
                    const Divider(),
                    ListTile(
                      title: Center(
                          child: Text(
                        "Google map",
                        style: theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w400, color: AppColors.blue),
                      )),
                      onTap: () {
                        // Google Haritalar ile yönleri açma işlemini burada gerçekleştirin
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MechitGeolocation(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                    color: const Color(0xffDCDCDD),
                    borderRadius: BorderRadius.circular(10)),
                child: SizedBox(
                  height: 56,
                  child: ListTile(
                    title: Center(
                      child: Text(
                        "Отмен",
                        style: theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w400, color: AppColors.blue),
                      ),
                    ),
                    onTap: () {
                      // Google Haritalar ile yönleri açma işlemini burada gerçekleştirin
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
