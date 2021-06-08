import 'package:flutter/material.dart';
import 'package:flutter_demo_1/models/models.dart';

const kPrimaryColor = Color(0xFF0C9869);
const kTextColor = Color(0xFF3C4046);
const kBackgroundColor = Color(0xFFF9F8FD);

const double kDefaultPadding = 20.0;

final flatButtonStyle = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))
    ),
    backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white)
);

final List<PlantData> plantsData = [
  PlantData(title: "Samantha",
      country: "Canada",
      price: 440,
      image: "assets/images/image_1.png"),
  PlantData(title: "Steph",
      country: "USA",
      price: 500,
      image: "assets/images/image_2.png"),
  PlantData(title: "Angelica",
      country: "Russia",
      price: 400,
      image: "assets/images/image_3.png"),
];