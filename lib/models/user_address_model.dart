import 'package:flutter_application/models/user_address_geo_model.dart';

class UserAddress {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final UserAddressGeo geo;

  UserAddress({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  factory UserAddress.fromJson(Map<String, dynamic> json) => UserAddress(
        street: json["street"],
        suite: json["suite"],
        city: json["city"],
        zipcode: json["zipcode"],
        geo: UserAddressGeo.fromJson(json["geo"]),
      );

  // Map<String, dynamic> toJson() => {
  //       "street": street,
  //       "suite": suite,
  //       "city": city,
  //       "zipcode": zipcode,
  //       "geo": geo.toJson(),
  //     };
}
