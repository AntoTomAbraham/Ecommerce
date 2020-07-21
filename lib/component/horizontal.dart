import 'package:flutter/material.dart';

class Horizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: "images/a1.png",
            //image_caption: "Frock",
          ),
          Category(
            image_location: "images/a2.png",
            //          image_caption: "Frock",
          ),
          Category(
            image_location: "images/a3.png",
            //          image_caption: "Frock",
          ),
          Category(
            image_location: "images/a4.png",
            //          image_caption: "Frock",
          ),
          Category(
            image_location: "images/a5.png",
            //          image_caption: "Frock",
          ),
          Category(
            image_location: "images/a6.png",
            //          image_caption: "Frock",
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({this.image_caption, this.image_location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
            width: 100.0,
            child: ListTile(
              title: Image.asset(
                image_location,
                width: 1000.0,
                height: 800.0,
              ),
//              subtitle: Container(
              //            alignment: Alignment.topCenter,
//              child: Text(image_caption),
            )),
      ),
    );
  }
}
