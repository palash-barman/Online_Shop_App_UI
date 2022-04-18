import 'package:flutter/material.dart';

import '../../../constents.dart';
import '../../../models/Product.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefultPaddin),
      child: Text(
        product.description,
        style: TextStyle(height: 2, fontSize: 18),
      ),
    );
  }
}
