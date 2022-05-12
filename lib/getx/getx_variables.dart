import 'package:get/get.dart';

class GetVariables extends GetxController{
  String appBarName = "Home";
  int cartCount = 0;

  void changeAppBarName(String value){
    appBarName = value;
    update();
  }

  void increaseCartCount(int i){
    cartCount+=i;
    update();
  }
}