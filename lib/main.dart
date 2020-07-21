import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerce/component/horizontal.dart';
import 'package:ecommerce/component/Products.dart';
import 'package:ecommerce/component/pages/cart.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Widget image_Carousel = Container(
        height: 200.0,
        child: Carousel(
          autoplay: false,
          boxFit: BoxFit.cover,
          dotSize: 4.0,
          indicatorBgPadding: 2.0, dotBgColor: Colors.transparent,
          images: [
            AssetImage("images/c8.jpg"),
            AssetImage("images/c9.jpg"),
            AssetImage("images/c1.jpg"),
            AssetImage("images/c5.jpg"),
            AssetImage("images/c7.jpg"),
            AssetImage("images/c4.jpg"),
            AssetImage("images/c10.jpg"),
            AssetImage("images/c13.jpg"),
            AssetImage("images/c11.jpg"),
            AssetImage("images/c6.jpg"),
          ],
          animationCurve: Curves.fastOutSlowIn,
          // animationDuration: Duration(milliseconds: 3000),AssetImage("images/c10.jpg"),
        ));

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
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              })
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("XXX"),
              accountEmail: Text("xxx@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.white60,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.redAccent),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home  Page"),
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              child: ListTile(
                title: Text("Shopping Cart"),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(
                  Icons.settings,
                  color: Colors.green,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Abouts"),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          image_Carousel,
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text("Categories"),
          ),
          Horizontal(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text("Recent Products "),
          ),
          Flexible(child: Products())
        ],
      ),
    );
  }
}
