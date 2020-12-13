import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopper/cart_screen.dart';
import 'package:shopper/edit_product_screen.dart';
import 'package:shopper/order_screen.dart';
import 'package:shopper/orders.dart';
import 'package:shopper/product_detail_screen.dart';
import 'package:shopper/product_provider.dart';
import 'package:shopper/products_overview_screen.dart';
import 'package:shopper/user_product_screen.dart';
import 'cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Orders(),
        ),
      ],
      child: MaterialApp(
        title: 'shop',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.pink,
          fontFamily: 'Lato',
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrderScreen.routeName: (ctx) => OrderScreen(),
          UserProductScreen.routeName: (ctx) => UserProductScreen(),
          EditProductScreen.routeName: (ctx) => EditProductScreen(),
        },
      ),
    );
  }
}
