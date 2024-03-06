class UserCompany {
  final String name;
  final String catchPhrase;
  final String bs;

  UserCompany({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  factory UserCompany.fromJson(Map<String, dynamic> json) => UserCompany(
        name: json["name"],
        catchPhrase: json["catchPhrase"],
        bs: json["bs"],
      );

  // Map<String, dynamic> toJson() => {
  //       "name": name,
  //       "catchPhrase": catchPhrase,
  //       "bs": bs,
  //     };
}
