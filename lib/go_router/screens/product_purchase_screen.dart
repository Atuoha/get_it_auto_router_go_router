import 'package:flutter/material.dart';

class ProductPurchaseScreen extends StatelessWidget {
  const ProductPurchaseScreen({
    super.key,
    required this.productImage,
    required this.productName,
    required this.productPrice,
  });

  static const routeName = 'pay-now';

  final String productName;
  final String productPrice;
  final String productImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(
          Icons.check_circle,
        ),
      ),
      appBar: AppBar(
        title: const Text('Purchase Item'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(productImage),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    productName,
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '\$$productPrice',
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
