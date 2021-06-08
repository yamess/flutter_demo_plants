import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_1/models/models.dart';
import 'package:flutter_demo_1/screens/constants.dart';
import 'package:flutter_demo_1/screens/details/components/title_and_price.dart';
import 'image_and_icons.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.data}) : super(key: key);

  final PlantData data;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ImageAndIcons(size: size, image: data.image,),
          TitleAndPrice(
            title: data.title,
            country: data.country,
            price: data.price,
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Buy Now"),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20)))),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(kPrimaryColor),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      textStyle: MaterialStateProperty.all<TextStyle>(
                          TextStyle(fontSize: 20))),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Text("Description"),
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(kPrimaryColor),
                      textStyle: MaterialStateProperty.all<TextStyle>(
                          TextStyle(fontSize: 20))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
