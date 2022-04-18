import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constents.dart';
import '../../../models/Product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefultPaddin),
      child: Row(
        children: [
          Container(
              margin: EdgeInsets.only(right: kDefultPaddin),
              height: 50,
              width: 58,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: product.color,
                  )),
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/add_to_cart.svg",
                  color: product.color,
                ),
              )),
          Expanded(
              child: SizedBox(
            height: 50,
            child: FlatButton(
                color: product.color,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                child: Text(
                  "Buy Now".toUpperCase(),
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
          ))
        ],
      ),
    );
  }
}
