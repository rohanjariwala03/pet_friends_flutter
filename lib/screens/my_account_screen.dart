import 'package:flutter/material.dart';
import 'package:pet_fitness_app/widgets/bottom_navigation_bar.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  _MyAccountScreenState createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:  const Icon(Icons.settings,color: Colors.black),
        title: const Text("Profile",style: TextStyle(color: Colors.black),),
        actions: <Widget>[
          GestureDetector(
            onTap: (){
             Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.cancel_outlined,color: Colors.black,),
              ),
            ),
          )
        ],
      ),
      body: SizedBox(
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.cancel_outlined,color: Colors.black,size: 100,),
              ),
            ),
            const Text(
                "Eliot",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500
              ),
            ),
            const Text(
                "2 years old",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w200
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Friends",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      Text(
                        "view all",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),

                 SizedBox(
                   width: size.width,
                   height: size.height*0.18,
                   child: ListView.builder(
                     itemCount: 5,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context,index){
                       return  Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Material(
                           elevation: 5,
                           borderRadius: BorderRadius.circular(15),
                           child: Container(
                             height: size.height*0.15,
                             width: size.width*0.35,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(15)
                             ),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Padding(
                                   padding: EdgeInsets.only(right: 10.0),
                                   child: Container(
                                     width: 50,
                                     height: 50,
                                     decoration: const BoxDecoration(
                                       shape: BoxShape.circle,
                                     ),
                                     child: const Icon(Icons.cancel_outlined,color: Colors.black,size: 50,),
                                   ),
                                 ),
                                 const Text(
                                   "Amigo",
                                   style: TextStyle(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w500
                                   ),
                                 ),
                                 const Text(
                                   "2 years old",
                                   style: TextStyle(
                                       fontSize: 12,
                                       fontWeight: FontWeight.w200
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       );
                     },
                   ),
                 ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Recent walks",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      Text(
                        "view all",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    width: size.width,
                    height: size.height*0.18,
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              height: size.height*0.15,
                              width: size.width*0.6,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 10.0),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(Icons.cancel_outlined,color: Colors.black,size: 50,),
                                    ),
                                  ),
                                  const Text(
                                    "Amigo",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  const Text(
                                    "2 years old",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w200
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              )
            ),

          ],
        ),
      ),
    );
  }
}
