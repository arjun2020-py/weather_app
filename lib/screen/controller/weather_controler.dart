import 'package:get/get.dart';

class WeatherController extends GetxController {
  var isClick = false.obs;

  isShowTextfiled() {
    isClick.value = !isClick.value;
  }
}
