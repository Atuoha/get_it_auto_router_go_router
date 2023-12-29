import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import '../../get_it/model/product.dart';
import '../widgets/bottom_container.dart';
import '../widgets/color_container.dart';
import '../widgets/ratings.dart';
import '../widgets/show_modal.dart';

class ProductDetailsScreen extends StatefulWidget {
  static const routeName = 'product-details';
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  late Color colored;

  // get color
  Color getColor(String color) {
    switch (color) {
      case 'red':
        colored = Colors.red;
        break;
      case 'purple':
        colored = Colors.purple;
        break;
      case 'grey':
        colored = Colors.grey;
        break;
      case 'black':
        colored = Colors.black;
        break;
      case 'orange':
        colored = Colors.orange;
        break;
      case 'indigo':
        colored = Colors.indigo;
        break;
      case 'yellow':
        colored = Colors.yellow;
        break;
      case 'blue':
        colored = Colors.blue;
        break;
      case 'brown':
        colored = Colors.brown;
        break;
      case 'teal':
        colored = Colors.teal;
        break;
      default:
    }

    return colored;
  }

  // pay now
  void payNow() {
    context.goNamed(
      'pay-now',
      queryParameters: <String, String>{
        'img': widget.product.imageUrl.toString(),
        'price': widget.product.price.toString(),
        'name': widget.product.name.toString(),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String> availableColors = widget.product.colors.split(',');

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: () => showImageModal(context, widget.product),
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.zero,
                  bottom: Radius.circular(50),
                ),
                child: Hero(
                  tag: widget.product.id,
                  child: Image.network(
                    widget.product.imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    widget.product.name,
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: 5),
                  ratings(),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        '\$${widget.product.price.toString()}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 3),
                      Text(
                        '\$${widget.product.previousPrice.toString()}',
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Available in stocks',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Out of stocks',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Colors Available',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (var color in availableColors)
                        buildContainer(
                          color,
                          getColor,
                        )
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'About',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.product.description,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomSheet: bottomContainer(widget.product, payNow),
    );
  }
}
