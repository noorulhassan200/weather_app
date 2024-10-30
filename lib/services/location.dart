import 'package:geolocator/geolocator.dart';

class Location {
  late double _latitude;
  late double _longitude;


  // Location(){
  //   _latitude=0;
  //   _longitude=0;
  // }

  Future<void> getCurrentLocation() async{
    LocationPermission permission = await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    _latitude=position.latitude;
    _longitude=position.longitude;
  }

}