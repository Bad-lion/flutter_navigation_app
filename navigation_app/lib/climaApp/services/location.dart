import 'package:geolocator/geolocator.dart';
import '';

class Location {
  double latinude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latinude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print("EEEERRRRROOOOOORRRRREEEEE!!!!! $e");
    }
  }
}
