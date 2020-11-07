import 'dart:async';
import 'package:geolocator/geolocator.dart';

class LocationData
{

  double glatitude;
  double glongitude;
  Position pos;
  String city;
  String postalCode;
  final Geolocator geolocator = Geolocator();
  Future <void> getCurrentlocation()
  async{
    try {
      pos = await Geolocator().getCurrentPosition(
          desiredAccuracy: LocationAccuracy.lowest);
      glongitude = pos.longitude;
      glatitude=  pos.latitude;
      print(glatitude);
      print("latitude");
      _getAddressFromLatLng();
    }
    catch(e)
    {
      print(e);

    }


  }

  _getAddressFromLatLng() async {
    try {
      List<Placemark> p = await geolocator.placemarkFromCoordinates(
          glatitude, glongitude);

      Placemark place = p[0];
        city = "${place.locality}";
        postalCode="${place.postalCode}";
        print("City"+city);
    } catch (e) {
      print(e);
    }
  }
}
