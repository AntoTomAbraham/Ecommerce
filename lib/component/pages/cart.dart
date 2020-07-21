import 'package:flutter/material.dart';
import 'package:ecommerce/component/cartproducts.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Cart"),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: cartproducts(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(children: <Widget>[
          Expanded(
              child: ListTile(
            title: Text("Total:"),
            subtitle: Text("7000"),
          )),
          Expanded(
              child: MaterialButton(
            onPressed: () {},
            child: Text(
              "Check Out",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.red,
          ))
        ]),
      ),
    );
  }
}
