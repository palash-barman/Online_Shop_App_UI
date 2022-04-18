import 'package:flutter/material.dart';

import '../../../constents.dart';
import '../../../models/Product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "AristocraTic Hand Bag ",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: kDefultPaddin,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: RichText(
                  text: TextSpan(children: [
                    const TextSpan(
                        text: "Price\n", style: TextStyle(fontSize: 20)),
                    TextSpan(
                        text: "\$${product.price}",
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold))
                  ]),
                ),
              ),
              const SizedBox(
                width: kDefultPaddin,
              ),
              Expanded(
                  child: Hero(
                      tag: "${product.id}",
                      child: Image.asset(
                        product.image,
                        fit: BoxFit.fill,
                      )))
            ],
          )
        ],
      ),
    );
  }
}
