import 'package:get/get.dart';

class GetVariables extends GetxController{
  String appBarName = "Home";

  void changeAppBarName(String value){
    appBarName = value;
    update();
  }
}