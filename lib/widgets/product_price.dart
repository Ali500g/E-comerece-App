import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  final double price;

  const ProductPrice({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "\$${price.toStringAsFixed(2)}",
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
    );
  }
}
