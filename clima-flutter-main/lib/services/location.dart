import 'package:geolocator/geolocator.dart';

class Location {
  double Latitude;
  double Longitude;

  void getData() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

    Latitude = position.latitude;
    Longitude = position.longitude;
  }
}
