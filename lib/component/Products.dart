import 'dart:ui';

import 'package:ecommerce/component/pages/productsdetails.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productlist = [
    {
      "name": "Blazer",
      "picture": "images/m1.jpg",
      "old_price": 3900,
      "price": 3400,
    },
    {
      "name": "Watch",
      "picture": "images/w1.jpg",
      "old_price": 7000,
      "price": 6400,
    },
    {
      "name": "iPhone",
      "picture": "images/c11.jpg",
      "old_price": 90000,
      "price": 84400,
    },
    {
      "name": "Shoes",
      "picture": "images/s1.jpg",
      "old_price": 3000,
      "price": 2400,
    },
    {
      "name": "Apple Airpod",
      "picture": "images/c9.jpg",
      "old_price": 13000,
      "price": 12400,
    },
    {
      "name": "Mavic mini",
      "picture": "images/c4.jpg",
      "old_price": 60000,
      "price": 54400,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productlist.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single(
              name: productlist[index]['name'],
              picture: productlist[index]['picture'],
              old_price: productlist[index]['old_price'],
              price: productlist[index]['price']);
        });
  }
}

class Single extends StatelessWidget {
  final name;
  final picture;
  final old_price;
  final price;
  Single({
    this.name,
    this.picture,
    this.old_price,
    this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductDetails(
                        ProductDetails_name: name,
                        ProductDetails_newprice: price,
                        ProductDetails_oldprice: old_price,
                        ProductDetails_picture: picture,
                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                        leading: Text(
                          name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        title: Text(
                          "$price",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w800),
                        ),
                        subtitle: Text(
                          "$old_price",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w800,
                              decoration: TextDecoration.lineThrough),
                        )),
                  ),
                  child: Image.asset(picture, fit: BoxFit.cover)),
            ),
          )),
    );
  }
}
