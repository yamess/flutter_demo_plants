import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_demo_1/screens/constants.dart';
import 'package:flutter_demo_1/screens/home/components/header_with_search_box.dart';
import 'package:flutter_demo_1/screens/home/components/recommend_plants.dart';
import 'package:flutter_demo_1/screens/home/components/title_with_more_btn.dart';

import 'featured_plants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;

    //SingleChildScrollView will enable scrolling on small devices
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended", press: () => print("tapped")),
          RecommendsPlant(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}
