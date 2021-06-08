import 'package:flutter/material.dart';
import 'package:flutter_demo_1/models/models.dart';
import 'package:flutter_demo_1/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.data}) : super(key: key);

  final PlantData data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(data: data),
    );
  }
}
