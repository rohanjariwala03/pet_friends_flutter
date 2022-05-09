import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //backgroundColor: Colors.purple,
      body: GoogleMap(
        initialCameraPosition:CameraPosition(
          target: LatLng(45.49558074871321, -73.5797448999033),
          zoom: 16.0,
        ),
      ),
    );
  }
}
