import 'package:flutter/material.dart';
import 'package:flutter_application/controller/main_controller.dart';
import 'package:flutter_application/models/user_model.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "GetX Fetch API",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: GetBuilder<MainController>(
          init: MainController(),
          builder: (controller) {
            return FutureBuilder(
              future: controller.userFuture.futureUser,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  List<UserModel> users = snapshot.data as List<UserModel>;
                  return ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      final user = users[index];
                      final address = user.address;
                      final geo = address.geo;
                      final company = user.company;
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "ID: ${user.userid.toString()} ",
                              ),
                              Text(
                                "Name: ${user.name}",
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Username: ${user.username} ",
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Email: ${user.email} ",
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Address: ${address.street} ${address.suite} ${address.city} \n${address.zipcode} ${geo.lat} ${geo.lng}",
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Phone: ${user.phone}",
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Website: ${user.website}",
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Company: ${company.name} \n${company.catchPhrase} \n${company.bs}",
                              ),
                            ],
                          ),
                          const Divider(
                            height: 10,
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            );
          }),
    );
  }
}
