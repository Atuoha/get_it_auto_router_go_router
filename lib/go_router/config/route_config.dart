import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../get_it/model/product.dart';
import '../product_details.dart';
import '../product_list_screen.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const ProductListScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: ProductDetails.routeName,
          builder: (BuildContext context, GoRouterState state) {
            Product product = state.extra as Product;
            return ProductDetails(
              product: product,
            );
          },
        )
      ],
    ),
  ],
);
