import 'package:flutter/material.dart';
import 'package:iqro/config/theme/app_colors.dart';

List<String> akysyz = [
  "Мечиттердин дареги",
  "Аллахтын 99 ысымы",
  "Куран окуу",
  "Дуа угуу",
  "Тасбих",
  "Билдирүүлөр",
];
List<bool> checkedList = [false, false, false, false, false, false];

class CustomContainerAkysyz extends StatefulWidget {
  const CustomContainerAkysyz({super.key});

  @override
  State<CustomContainerAkysyz> createState() => _CustomContainerAkysyzState();
}

class _CustomContainerAkysyzState extends State<CustomContainerAkysyz> {
  bool checkedValue = true;

  @override
  Widget build(BuildContext context) {
    var theme = ThemeData();
    return Container(
      width: 172,
      height: 257,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.bgColor,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Акысыз",
            style: theme.textTheme.bodyLarge?.copyWith(
              fontSize: 13,
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: akysyz.length,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: Checkbox.width + 10,
                    child: Row(
                      children: [
                        Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          side: const BorderSide(
                              color: AppColors.lightgrey,
                              width: 1.0,
                              style: BorderStyle.solid),
                          visualDensity: const VisualDensity(
                            horizontal: -3,
                          ),
                          activeColor: AppColors.bgColor,
                          checkColor: AppColors.white,
                          value: checkedList[index],
                          onChanged: (bool? value) {
                            setState(() {
                              checkedList[index] = value ?? false;
                            });
                          },
                        ),
                        Text(
                          akysyz[index],
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
