import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it_auto_router_go_router/get_it/services/locator.dart';
import 'package:get_it_auto_router_go_router/go_router/product_details.dart';

import 'get_it/views/get_it_screen.dart';
import 'go_router/product_list_screen.dart';

void main() {
  // locator(); // get it
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const GetItScreen(), // get it
      home: const GoRouterScreen(), // go router
      routes: {
        ProductDetails.routeName: (context) => const ProductDetails(),
      },
    );
  }
}
