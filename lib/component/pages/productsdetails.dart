import 'package:ecommerce/main.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ProductDetails extends StatefulWidget {
  final ProductDetails_name;
  final ProductDetails_newprice;
  final ProductDetails_oldprice;
  final ProductDetails_picture;
  ProductDetails({
    this.ProductDetails_name,
    this.ProductDetails_newprice,
    this.ProductDetails_oldprice,
    this.ProductDetails_picture,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Shopapp"),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.ProductDetails_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.ProductDetails_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "${widget.ProductDetails_newprice}",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w800),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "${widget.ProductDetails_oldprice}",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w800,
                              decoration: TextDecoration.lineThrough),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("size"),
                          content: Text("Choose The Size"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text(
                                "Close",
                                style: TextStyle(color: Colors.blue),
                              ),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text("size")),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Qty"),
                          content: Text("Choose The Quantity"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text(
                                "Close",
                                style: TextStyle(color: Colors.blue),
                              ),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.black12,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text("Qty")),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("color"),
                          content: Text("Choose The Colour"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text(
                                "Close",
                                style: TextStyle(color: Colors.blue),
                              ),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text("colour")),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              ))
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.red,
                textColor: Colors.white,
                elevation: 0.2,
                child: Text("Buy Now"),
              )),
              IconButton(
                icon: Icon(Icons.add_shopping_cart),
                color: Colors.red,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                color: Colors.red,
                onPressed: () {},
              )
            ],
          ),
          Divider(),
          ListTile(
            title: Text("Product Details"),
            subtitle: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "product name",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w800),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.ProductDetails_name),
              )
            ],
          ),
          //REMINDER TO ADD BRAND=============================================
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "product Brand",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w800),
                ),
              ),
            ],
          ),
          //REMINDER TO ADD CONDITION=============================================
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "product Condition",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w800),
                ),
              )
            ],
          ),
          Divider(),
          Container(
            child: Center(
              child: Text("100% Original Products",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.normal,
                    color: Colors.grey,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
