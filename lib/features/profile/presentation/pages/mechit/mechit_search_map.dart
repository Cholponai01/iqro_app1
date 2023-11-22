import 'package:flutter/material.dart';
import 'package:iqro/config/config.dart';
import 'package:iqro/config/theme/app_colors.dart';

class MechitSearchMap extends StatelessWidget {
  const MechitSearchMap({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = ThemeData();
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: Stack(
        children: [
          Image.asset(
            "assets/images/map2.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 327),
            child: Container(
              width: 44,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                color: Color(0xffFBFBFB),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.near_me_outlined,
                  size: 20,
                ),
                onPressed: () {
                  _showBottomSheet(context);
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    // isScrollControlled: true,
    // enableDrag: false,
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: 100,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 18, top: 20, bottom: 20, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 5,
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.disabled,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 20,
                          color: AppColors.grey,
                        ),
                        hintText: 'Search Maps',
                        hintStyle: theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w400, color: AppColors.grey),
                        fillColor: AppColors.lightgrey,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 5.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.lightgrey),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 36,
                    height: 36,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.grey,
                    ),
                    child: Center(
                      child: Text(
                        'AA',
                        style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
