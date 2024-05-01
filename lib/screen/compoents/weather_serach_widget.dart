import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:weather_app/utils/custom_images/custom_images.dart';

import '../../utils/custom_color/custom_color.dart';
import '../../utils/custom_widget/custom_szied_box.dart';
import '../../utils/custom_widget/weather_text_widget.dart';
import '../controller/weather_controler.dart';

class WeatherSearchWidget extends StatelessWidget {
  WeatherSearchWidget({super.key, required this.weatherController});
  WeatherController weatherController;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Icon(
                  Icons.location_pin,
                  color: WeatherColor().redIconColor,
                ),
                HorzontalSizedBox(10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WeatherTextWidget(
                        text: 'Dubai',
                        color: WeatherColor().whiteIconColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                    WeatherTextWidget(
                        text: 'Good Morring',
                        color: WeatherColor().whiteIconColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ],
                )
              ],
            ),
          ),
          IconButton(
              onPressed: () {
                weatherController.isShowTextfiled();
              },
              icon: Icon(
                Icons.search,
                size: 25,
              )),
        ],
      ),
    );
  }
}
