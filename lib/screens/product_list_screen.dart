import 'package:flutter/material.dart';
import '../models/product.dart';
import '../screens/product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      title: "Iphone",
      description: "A powerful smartphone with amazing features.",
      price: 79000.99,
      imageUrl: "assets/Images/Iphone.jpeg",
    ),
    Product(
      title: "Laptop",
      description: "A high-performance laptop for work and gaming.",
      price: 1020.99,
      imageUrl: "assets/Images/Lptop.jpeg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Soft background
      appBar: AppBar(
        title: Text('Products', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey[900], // Elegant deep blue-gray
        centerTitle: true,
        elevation: 4,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: products[index]),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 8,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(12),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(products[index].imageUrl, width: 60, height: 60, fit: BoxFit.cover),
                ),
                title: Text(
                  products[index].title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey[900]),
                ),
                subtitle: Text(
                  "\$${products[index].price}",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.teal[700]),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.blueGrey),
              ),
            ),
          );
        },
      ),
    );
  }
}
