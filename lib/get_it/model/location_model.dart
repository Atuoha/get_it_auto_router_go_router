class LocationModel {
  final double lat;
  final double long;

  const LocationModel({
    required this.lat,
    required this.long,
  });

  factory LocationModel.initial() => const LocationModel(lat: 0, long: 0);
}
