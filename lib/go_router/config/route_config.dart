import 'package:flutter/material.dart';
import 'package:get_it_auto_router_go_router/go_router/controllers/product_controller.dart';
import 'package:go_router/go_router.dart';
import '../models/product.dart';
import '../screens/product_details_screen.dart';
import '../screens/product_list_screen.dart';
import '../screens/product_purchase_screen.dart';

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
          path: ProductDetailsScreen.routeName,
          name: ProductDetailsScreen.routeName,
          pageBuilder: (BuildContext context, GoRouterState state) {
            ProductController productController = ProductController();

            Product product = productController
                .findById(state.uri.queryParameters['id'] as String);

            return CustomTransitionPage<void>(
              key: state.pageKey,
              child: ProductDetailsScreen(
                product: product,
              ),
              transitionDuration: const Duration(milliseconds: 500),
              reverseTransitionDuration: const Duration(milliseconds: 500),
              transitionsBuilder: (
                BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child,
              ) {
                return FadeTransition(
                  opacity: CurveTween(curve: Curves.easeInOutQuart)
                      .animate(animation),
                  child: child,
                );
              },
            );
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'product-purchase/:description',
              name: ProductPurchaseScreen.routeName,
              builder: (BuildContext context, GoRouterState state) {
                return ProductPurchaseScreen(
                  productImage: state.uri.queryParameters['img']!,
                  productPrice: state.uri.queryParameters['price']!,
                  productName: state.uri.queryParameters['name']!,
                  description: state.pathParameters['description']!,
                );
              },
              onExit: (BuildContext context) async {
                final bool? confirmed = await showDialog<bool>(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      content: const Text('Are you sure to leave this page?'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(false),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(true),
                          child: const Text('Confirm'),
                        ),
                      ],
                    );
                  },
                );
                return confirmed ?? false;
              },
            )
          ],
        )
      ],
    ),
  ],
);
