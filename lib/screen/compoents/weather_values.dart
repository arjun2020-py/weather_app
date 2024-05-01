import 'package:flutter/material.dart';

import '../../utils/custom_color/custom_color.dart';
import '../../utils/custom_widget/custom_szied_box.dart';
import '../../utils/custom_widget/weather_text_widget.dart';

class WeatherValuesWidget extends StatelessWidget {
  const WeatherValuesWidget(
      {super.key,
      required this.icons,
      required this.text,
      required this.value});
  final IconData icons;
  final String text;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icons),
        HorzontalSizedBox(10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WeatherTextWidget(
                text: text,
                color: WeatherColor().whiteIconColor,
                fontSize: 12,
                fontWeight: FontWeight.w400),
            WeatherTextWidget(
                text: value,
                color: WeatherColor().whiteIconColor,
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ],
        )
      ],
    );
  }
}
