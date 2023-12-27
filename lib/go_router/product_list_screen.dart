import 'package:flutter/material.dart';
import 'package:get_it_auto_router_go_router/go_router/product_details.dart';
import 'package:get_it_auto_router_go_router/go_router/widgets/search_section.dart';
import 'package:get_it_auto_router_go_router/go_router/widgets/single_product.dart';

import '../get_it/model/product.dart';

class GoRouterScreen extends StatelessWidget {
  const GoRouterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SearchSection(
              searchController: searchController,
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  Product product = products[index];

                  return GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed(
                      ProductDetails.routeName,
                      arguments: {
                        'product': product,
                      },
                    ),
                    child: SingleProduct(product: product),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}