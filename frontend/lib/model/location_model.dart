class LocationModel {
  int id;
  String placeName;
  String locationName;
  int numberOfDestinations;
  String exactLocation;
  String countryCode;
  String countryName;
  double rating;
  bool saved;
  String placeUrl;
  String locationUrl;
  String countryUrl;

  LocationModel({
    required this.id,
    required this.placeName,
    required this.locationName,
    required this.numberOfDestinations,
    required this.exactLocation,
    required this.countryCode,
    required this.countryName,
    required this.rating,
    required this.saved,
    required this.placeUrl,
    required this.locationUrl,
    required this.countryUrl,
  });
}

List<LocationModel> dymmyLocationsData = [
  LocationModel(
    id: 1,
    placeName: "Borobudur Temple",
    locationName: "Magelang",
    numberOfDestinations: 3,
    exactLocation:
        "Candi Borobudur, Borobudur, Kec. Borobudur, Kabupaten Magelang, Jawa Tengah 56553, Indonesia",
    countryCode: "ID",
    countryName: "Indonesia",
    rating: 4.5,
    saved: false,
    placeUrl:
        "https://images.unsplash.com/photo-1593537898540-b8b821014c8e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1888&q=80",
    locationUrl:
        "https://www.indonesia.travel/content/dam/indtravelrevamp/en/trip-ideas/fitcation-in-borobudur-spots-with-the-best-view-to-enjoy/borobudur-thumbnail.jpg",
    countryUrl:
        'https://images.unsplash.com/photo-1565171181621-79a587f38fec?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
  ),
  LocationModel(
    id: 2,
    placeName: "Golden Temple",
    locationName: "Amritsar",
    numberOfDestinations: 3,
    exactLocation: "Off the east coast of the Queensland mainland, Australia",
    countryCode: "IN",
    countryName: "India",
    rating: 4.9,
    saved: true,
    placeUrl:
        "https://images.unsplash.com/photo-1586261709963-7a93cad40d44?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=327&q=80",
    locationUrl:
        "https://images.unsplash.com/photo-1623554395984-73043f6ba550?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
    countryUrl:
        'https://images.unsplash.com/photo-1600317055848-1a78a8bf2fd0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=327&q=80',
  ),
  LocationModel(
    id: 3,
    placeName: "Shree Jagannath Temple",
    locationName: "Puri",
    numberOfDestinations: 3,
    exactLocation: "Puri, Odisha, India",
    countryCode: "IN",
    countryName: "India",
    rating: 4.5,
    saved: true,
    placeUrl: "https://pbs.twimg.com/media/EhSNE4sVoAEwmcE.jpg",
    locationUrl:
        "https://media.istockphoto.com/id/1125550512/photo/puri-beach.jpg?s=612x612&w=0&k=20&c=4zhiIJdJ75R5J_XNUnEm6Bihk6Fp0fF9jfRivg6l1uA=",
    countryUrl:
        'https://images.unsplash.com/photo-1600317055848-1a78a8bf2fd0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=327&q=80',
  ),
];
