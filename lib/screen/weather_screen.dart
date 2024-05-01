import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:weather_app/utils/custom_color/custom_color.dart';
import 'package:weather_app/utils/custom_images/custom_images.dart';
import 'package:weather_app/utils/custom_widget/custom_szied_box.dart';
import 'package:weather_app/utils/custom_widget/weather_text_widget.dart';

import 'compoents/weather_serach_widget.dart';
import 'compoents/weather_values.dart';
import 'controller/weather_controler.dart';

class ScreenWeather extends StatelessWidget {
  ScreenWeather({super.key});
  final weatherController = Get.put(WeatherController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(WeatherImages().weatherBg))),
        child: Stack(
          children: [
            Obx(() => weatherController.isClick.value 
                ? Positioned(
                    top: 60,
                    left: 10,
                    right: 10,
                    child: Container(
                      height: 45,
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                        ),
                      ),
                    ),
                  )
                : SizedBox()),
            WeatherSearchWidget(weatherController: weatherController),
            Align(
                alignment: Alignment(0, -0.5),
                child: Image.asset(
                  imagePath[0].toString(),
                  width: 100,
                )),
            Align(
              alignment: Alignment(0, 0),
              child: Container(
                height: 130,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    WeatherTextWidget(
                        text: '21 C',
                        color: WeatherColor().whiteIconColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    WeatherTextWidget(
                        text: 'Cloudy',
                        color: WeatherColor().whiteIconColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                    WeatherTextWidget(
                        text: DateTime.now().toString(),
                        color: WeatherColor().whiteIconColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600)
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.7),
              child: Container(
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.4)),
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WeatherValuesWidget(
                          icons: Icons.temple_buddhist,
                          text: 'Temp Max',
                          value: '21 C',
                        ),
                        HorzontalSizedBox(20),
                        WeatherValuesWidget(
                          icons: Icons.temple_hindu,
                          text: 'Temp Min',
                          value: '21 C',
                        ),
                      ],
                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 2,
                      color: WeatherColor().whiteIconColor,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WeatherValuesWidget(
                          icons: Icons.sunny,
                          text: 'Sunrise',
                          value: '21 C',
                        ),
                        HorzontalSizedBox(20),
                        WeatherValuesWidget(
                          icons: Icons.sunny_snowing,
                          text: 'Sunset',
                          value: '21 C',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
