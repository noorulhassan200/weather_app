import 'package:weather_app/services/location.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

 void getLocation() async{
   Location location= Location();
   await location.getCurrentLocation();
 }

  @override
  void initState(){

     super.initState();
     getLocation();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            getLocation();

            //Get the current location
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
