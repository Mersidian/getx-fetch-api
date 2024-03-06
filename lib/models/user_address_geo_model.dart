class UserAddressGeo {
  final String lat;
  final String lng;

  UserAddressGeo({
    required this.lat,
    required this.lng,
  });

  factory UserAddressGeo.fromJson(Map<String, dynamic> json) => UserAddressGeo(
        lat: json["lat"],
        lng: json["lng"],
      );

  // Map<String, dynamic> toJson() => {
  //   "lat": lat,
  //   "lng": lng,
  // };
}
