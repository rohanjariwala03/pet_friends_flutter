import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:pet_fitness_app/getx/getx_variables.dart';
import 'package:pet_fitness_app/screens/connection_screens/connection_screen.dart';
import 'package:pet_fitness_app/screens/home_screens/home_screen.dart';
import 'package:pet_fitness_app/screens/profile_screens/my_account_screen.dart';
import 'package:pet_fitness_app/screens/shop_screens/shop_screen.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarWidgetState createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    GetVariables getVariablesController = Get.put(GetVariables());
    return  MaterialApp(
      color: Colors.yellow,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
               const HomeScreen(),
               const ConnectionScreen(),
               const ShopScreen(),
               Container(
                color: Colors.red,
              ),
            ],
          ),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: GetBuilder<GetVariables>(
              builder: (controller) {
                return Text(
                  controller.appBarName,
                  textAlign: TextAlign.start,
                );
              },
            ),
            actions: <Widget>[
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> const MyAccountScreen())
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white, //remove this when you add image.
                    ),
                    child: const Icon(Icons.account_circle_outlined,color: Colors.black,),
                  ),
                ),
              )
            ],
          ),
          bottomNavigationBar:  TabBar(
            tabs: const [
              Tab(
                icon:  Icon(Icons.dashboard),
              ),
              Tab(
                icon:  Icon(Icons.rss_feed),
              ),
              Tab(
                icon:  Icon(Icons.timer ),
              ),
              Tab(icon:  Icon(Icons.circle_notifications_rounded),)
            ],
            onTap: (value){
              if(value.toString() == "0") {
                getVariablesController.changeAppBarName("Home");
              } else if(value.toString() == "1"){
                getVariablesController.changeAppBarName("Connections");
              } else if(value.toString() == "2"){
                getVariablesController.changeAppBarName("Shop");
              } else if(value.toString() == "3"){
                getVariablesController.changeAppBarName("Settings");
              }
            },
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.red,
            labelPadding: EdgeInsets.only(bottom: 15,top: 5),
          ),
        ),
      ),
    );
  }
}
