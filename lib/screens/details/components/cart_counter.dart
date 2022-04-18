import 'package:flutter/material.dart';

import '../../../constents.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numofItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(Icons.remove, () {
          if (numofItems > 1) {
            setState(() {
              numofItems--;
            });
          }
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefultPaddin),
          child: Text(
            numofItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        buildOutlineButton(Icons.add, () {
          setState(() {
            numofItems++;
          });
        })
      ],
    );
  }

  SizedBox buildOutlineButton(IconData icon, Function() press) {
    return SizedBox(
      height: 38,
      width: 45,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        child: Icon(icon),
        onPressed: press,
      ),
    );
  }
}
