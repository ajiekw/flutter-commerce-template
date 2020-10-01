import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_commerce/constants.dart';

void main() => runApp(FrontMarket());

class FrontMarket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Camera Store",
      home: _FrontMarket(),
      theme: ThemeData(
        textTheme:
            Theme.of(context).textTheme.apply(bodyColor: dTextLightColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class _FrontMarket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey,
        ),
        centerTitle: true,
        title: Text(
          "Cameras",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: null,
          )
        ],
      ),
      body: Categories(),
    );
  }
}

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Cameras",
    "Tripod",
    "Lenses",
    "Accessories",
    "Best Seller",
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? Colors.green : Colors.grey,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: DefaultPadding / 4),
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.green : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
