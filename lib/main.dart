import 'package:flutter/material.dart';
import 'views/components/body.dart';

void main() {
  runApp(const FetchApi());
}

class FetchApi extends StatelessWidget {
  const FetchApi({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "GetX Fetch API",
      home: Body(),
    );
  }
}