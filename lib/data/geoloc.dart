import 'package:geolocator/geolocator.dart';
class Geoloc{
  Future<Position> getCurrentLocation() async {
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission != LocationPermission.whileInUse && permission != LocationPermission.always) {
          return Position(
              longitude: 39.200296,
              latitude: 51.660781,
              timestamp: DateTime.now(),
              accuracy: 0,
              altitude: 0,
              altitudeAccuracy: 0,
              heading: 0,
              headingAccuracy: 0,
              speed: 0,
              speedAccuracy: 0);
        }
      }
      return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  }
}