import 'package:flutter/material.dart';
import 'package:pet_fitness_app/screens/home_screen.dart';
import 'package:pet_fitness_app/screens/my_account_screen.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarWidgetState createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
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
               Container(color: Colors.orange,),
               Container(
                color: Colors.lightGreen,
              ),
               Container(
                color: Colors.red,
              ),
            ],
          ),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: const Text(
              "Home",
              textAlign: TextAlign.start,
            ),
            actions: <Widget>[
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> const MyAccountScreen())
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(right: 10.0),
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
          bottomNavigationBar:  const TabBar(
            tabs: [
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
