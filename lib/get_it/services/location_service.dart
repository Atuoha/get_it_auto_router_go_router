import 'dart:async';
import 'package:flutter/services.dart';
import 'package:location/location.dart';
import '../model/location_model.dart';

class LocationService {
  Location location = Location();
  LocationModel currentLocation = LocationModel.initial();

  StreamController<LocationModel> locationController =
      StreamController<LocationModel>.broadcast();

  Stream<LocationModel> get getStream => locationController.stream;

  LocationService() {
    location.requestPermission().then((permission) {
      if (permission == PermissionStatus.granted) {
        location.onLocationChanged.listen((locationData) {
          locationController.add(
            LocationModel(
              lat: locationData.latitude!,
              long: locationData.longitude!,
            ),
          );
        });
      } else {
        print('Permission not granted');
      }
    });
  }

  Future<LocationModel> getLocation() async {
    try {
      var userLocation = await location.getLocation();
      currentLocation = LocationModel(
        lat: userLocation.latitude!,
        long: userLocation.longitude!,
      );
      print(currentLocation.lat);
    } catch (e) {
      if (e == PlatformException) {
        print('Error occorred');
      }
    }
    return currentLocation;
  }
}
