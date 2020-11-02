import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Product.dart';
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

//AppBar
class _FrontMarket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Camera Store",
          style: TextStyle(color: Colors.green),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.green,
            ),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.green,
            ),
            onPressed: null,
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("Camera Store"),
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Categories(),
          Expanded(
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.75),
              itemBuilder: (context, index) => Items(
                product: products[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Items extends StatelessWidget {
  final Product product;
  final Function press;
  const Items({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(DefaultPadding),
          height: 180,
          width: 160,
          decoration: BoxDecoration(
            color: Colors.grey[850],
            borderRadius: BorderRadius.circular(30),
          ),
          child: Image.asset(product.image),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: DefaultPadding / 4),
          child: Text(
            product.title,
            style: TextStyle(color: Colors.black),
          ),
        ),
        Text("\1.000.000 Rp")
      ],
    );
  }
}

//List Menu
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
            ),
          ],
        ),
      ),
    );
  }
}
