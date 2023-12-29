import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../get_it/model/product.dart';
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
          pageBuilder: (BuildContext context, GoRouterState state) {
            Product product = state.extra as Product;

            return CustomTransitionPage<void>(
              key: state.pageKey,
              child: ProductDetailsScreen(
                product: product,
              ),
              transitionDuration: const Duration(milliseconds: 1000),
              reverseTransitionDuration: const Duration(milliseconds: 1000),
              transitionsBuilder: (
                BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child,
              ) {
                // Change the opacity of the screen using a Curve based on the the animation's
                // value
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
              path: ProductPurchaseScreen.routeName,
              name: ProductPurchaseScreen.routeName,
              builder: (BuildContext context, GoRouterState state) {
                return ProductPurchaseScreen(
                  productImage: state.uri.queryParameters['img']!,
                  productPrice: state.uri.queryParameters['price']!,
                  productName: state.uri.queryParameters['name']!,
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
