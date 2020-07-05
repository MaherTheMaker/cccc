import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class Location {
  double lat, long;

  getLocation() async {
    try {
      Position position = await Geolocator().getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high); //TODO change to low
      lat = position.latitude;
      long = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
