import 'package:flutter/material.dart';
import '../widgets/list_cart_products.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
         children: const[
           ListCartProducts(),
           SizedBox(height: 20,),
         ],
        ),
      ),
    );
  }
}
