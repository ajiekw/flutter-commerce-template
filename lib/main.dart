import 'package:flutter/material.dart';
import 'package:flutter_commerce/constants.dart';

void main() => runApp(FrontMarket());

class FrontMarket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Camera Store",
      home: _FrontMarket(),
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: dGeneralColor),
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
    );
  }
}
