import 'package:flutter/material.dart';
import 'package:iqro/config/theme/app_colors.dart';

class MechitGeolocation extends StatefulWidget {
  const MechitGeolocation({super.key});

  @override
  State<MechitGeolocation> createState() => _MechitGeolocationState();
}

class _MechitGeolocationState extends State<MechitGeolocation> {
  bool isToggled = false;
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
        title: Text(
          "Мечеттерди издөө",
          style: theme.textTheme.bodyLarge?.copyWith(color: AppColors.white),
        ),
        backgroundColor: AppColors.bgColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 25),
              child: SizedBox(
                width: double.infinity,
                child: Image.asset(
                  "assets/images/map.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.only(left: 20, right: 20),
            //   child: Row(
            //      mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       SizedBox(
            //         // width: 233,
            //         child: Text(
            //           "Разрешить приложению ikro  доступ к данным о местоположении устройства",
            //           style: theme.textTheme.titleMedium,
            //         ),
            //       ),
            // IconButton(
            //   onPressed: () {
            //     setState(() {
            //       isToggled = !isToggled;
            //     });
            //   },
            //   icon: Icon(isToggled ? Icons.toggle_on : Icons.toggle_off,
            //       weight: double.infinity,
            //       size: 60.0,
            //       color:
            //           isToggled ? AppColors.green : AppColors.lightgrey),
            //   focusColor: Colors.transparent,
            //   hoverColor: Colors.transparent,
            //   highlightColor: Colors.transparent,
            // ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
