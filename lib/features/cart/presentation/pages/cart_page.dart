import 'package:fake_store/core/var.dart';
import 'package:fake_store/features/product/presentation/widgets/home_page_widgets/center_body.dart';
import 'package:flutter/material.dart';
import '../../../../core/localization/get_os.dart';
import '../../../../core/widget/adaptive/adaptive_button.dart';
import '../var.dart';
import '../widgets/calculate_sup_total.dart';
import '../widgets/list_cart_products.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    calculateSupTotal();
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Expanded(child: ListCartProducts()),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Sub Total",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    Row(
                      children: [
                        Text(
                          "\$ ",
                          style: TextStyle(
                              color: Colors.orange[400], fontSize: 17),
                        ),
                        Text(
                          supTotal.toStringAsFixed(2),
                          style: const TextStyle(
                              color: Colors.black, fontSize: 17),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Shipping",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    Row(
                      children: [
                        Text(
                          "\$ ",
                          style: TextStyle(
                              color: Colors.orange[400], fontSize: 17),
                        ),
                        const Text(
                          "10",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Container(
                    width: double.infinity,
                    height: 1.0,
                    color: Colors.grey[300],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Total",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    Row(
                      children: [
                        Text(
                          "\$ ",
                          style: TextStyle(
                              color: Colors.orange[400], fontSize: 17),
                        ),
                        Text(
                          (supTotal + 10).toStringAsFixed(2),
                          style: const TextStyle(
                              color: Colors.black, fontSize: 17),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(
                  height: 15,
                ),
                AdaptiveButton(
                  os: getOs(),
                  function: () {},
                  text: "Checkout",
                  background: Colors.black87,
                  radius: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
