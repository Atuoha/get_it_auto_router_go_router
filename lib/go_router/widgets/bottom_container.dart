// bottom container
import 'package:flutter/material.dart';

import '../../get_it/model/product.dart';

Container bottomContainer(Product productDetails,Function payNow) {
  return Container(
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Price',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                '\$${productDetails.price}',
                style: const TextStyle(
                  color: Colors.brown,
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
              )
            ],
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.brown.withOpacity(0.3),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    topLeft: Radius.circular(5),
                  ),
                ),
                child: const Center(
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Colors.white,
                      ),
                      SizedBox(width: 15),
                      Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => payNow(),
                child: Container(
                  height: 50,
                  width: 120,
                  decoration: const BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
