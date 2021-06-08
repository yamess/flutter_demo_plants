import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_1/screens/home/components/recommend_plant_card.dart';
import 'package:flutter_demo_1/screens/details/details_screen.dart';

import '../../constants.dart';

class RecommendsPlant extends StatelessWidget {
  const RecommendsPlant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = plantsData;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: data.map(
        (e) {
          return RecommendPlantCard(
            image: e.image,
            price: e.price,
            country: e.country,
            title: e.title,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(data: e),
                ),
              );
            },
          );
        },
      ).toList()
          // children: [
          //   RecommendPlantCard(
          //     image: "assets/images/image_1.png",
          //     title: "Samantha",
          //     country: "Russia",
          //     price: 500,
          //     press: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => DetailsScreen(),
          //           settings: RouteSettings(
          //             arguments:
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          //   RecommendPlantCard(
          //     image: "assets/images/image_2.png",
          //     title: "Steph",
          //     country: "USA",
          //     price: 650,
          //     press: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => DetailsScreen()));
          //     },
          //   ),
          //   RecommendPlantCard(
          //     image: "assets/images/image_3.png",
          //     title: "Angelica",
          //     country: "Canada",
          //     price: 750,
          //     press: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => DetailsScreen()));
          //     },
          //   ),
          //   RecommendPlantCard(
          //     image: "assets/images/image_1.png",
          //     title: "Samantha",
          //     country: "Russia",
          //     price: 500,
          //     press: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => DetailsScreen()));
          //     },
          //   ),
          // ],
          ),
    );
  }
}
