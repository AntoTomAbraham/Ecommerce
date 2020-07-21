import 'dart:ui';

import 'package:flutter/material.dart';

class cartproducts extends StatefulWidget {
  @override
  _cartproductsState createState() => _cartproductsState();
}

class _cartproductsState extends State<cartproducts> {
  var products_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "images/m1.jpg",
      "price": 3400,
      "Size": "L",
      "colour": "black",
      "quantity": "1",
    },
    {
      "name": "Watch",
      "picture": "images/w1.jpg",
      "price": 6400,
      "Size": "L",
      "colour": "black",
      "quantity": "1",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products_on_the_cart.length,
        itemBuilder: (context, index) {
          return single_cart(
            cartname: products_on_the_cart[index]["name"],
            cartcolour: products_on_the_cart[index]["colour"],
            cartquantity: products_on_the_cart[index]["quantity"],
            cartpicture: products_on_the_cart[index]["picture"],
            cartprice: products_on_the_cart[index]["price"],
            cartsize: products_on_the_cart[index]["size"],
          );
        });
  }
}

class single_cart extends StatelessWidget {
  final cartname;
  final cartprice;
  final cartpicture;
  final cartsize;
  final cartcolour;
  final cartquantity;
  single_cart({
    this.cartcolour,
    this.cartname,
    this.cartpicture,
    this.cartprice,
    this.cartquantity,
    this.cartsize,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //====================photocart====================
        leading: Image.asset(cartpicture),
        title: Text(cartname),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  //size================================================
                  padding: const EdgeInsets.all(8.0),
                  child: Text("size:"),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                      child: Text(
                        cartsize.toString(),
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    Divider(),
                    Padding(
                      //color================================================
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "colour:",
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 8.0, 8.0, 8.0),
                          child: Text(
                            cartcolour,
                            style: TextStyle(color: Colors.red),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ), //productprize=====================================
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\   \Rs\  ${cartprice}",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
