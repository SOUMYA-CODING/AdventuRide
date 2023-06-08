class LocationModel {
  int id;
  String destinationName;
  String cityName;
  String stateName;
  String exactDestinationLocation;
  double rating;
  bool saved;
  String destinationImageUrlOne;
  String destinationImageUrlTwo;
  String destinationImageUrlThree;
  String destinationImageUrlFour;
  String cityImageUrl;
  String stateImageUrl;

  LocationModel({
    required this.id,
    required this.destinationName,
    required this.cityName,
    required this.stateName,
    required this.exactDestinationLocation,
    required this.rating,
    required this.saved,
    required this.destinationImageUrlOne,
    required this.destinationImageUrlTwo,
    required this.destinationImageUrlThree,
    required this.destinationImageUrlFour,
    required this.cityImageUrl,
    required this.stateImageUrl,
  });
}

List<LocationModel> dummyLocationsData = [
  LocationModel(
    id: 1,
    destinationName: "destinationName",
    cityName: "cityName",
    stateName: "stateName",
    exactDestinationLocation: "exactDestinationLocation",
    rating: 4.5,
    saved: false,
    destinationImageUrlOne: "destinationImageUrlOne",
    destinationImageUrlTwo: "destinationImageUrlTwo",
    destinationImageUrlThree: "destinationImageUrlThree",
    destinationImageUrlFour: "destinationImageUrlFour",
    cityImageUrl: "cityImageUrl",
    stateImageUrl: "stateImageUrl",
  ),
];
