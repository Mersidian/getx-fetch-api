import 'dart:convert';
import 'package:flutter_application/models/user_address_model.dart';
import 'package:flutter_application/models/user_company_model.dart';

List<UserModel> fromJson(String str) =>
    List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

// String toJson(List<UserModel> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  final int userid;
  final String name;
  final String username;
  final String email;
  final UserAddress address;
  final String phone;
  final String website;
  final UserCompany company;

  UserModel({
    required this.userid,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        userid: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        address: UserAddress.fromJson(json["address"]),
        phone: json["phone"],
        website: json["website"],
        company: UserCompany.fromJson(json["company"]),
      );

  // Map<String, dynamic> toJson() => {
  //       "id": userid,
  //       "name": name,
  //       "username": username,
  //       "email": email,
  //       "address": address.toJson(),
  //       "phone": phone,
  //       "website": website,
  //       "company": company.toJson(),
  //     };
}
