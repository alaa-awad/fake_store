import 'package:fake_store/features/cart/presentation/widgets/list_cart_item.dart';
import 'package:flutter/material.dart';

import '../../../../core/var.dart';

class ListCartProducts extends StatefulWidget {
  const ListCartProducts({Key? key}) : super(key: key);

  @override
  State<ListCartProducts> createState() => _ListCartProductsState();
}

class _ListCartProductsState extends State<ListCartProducts> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ListCartItem(
            cartItem: carts[index],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
              height: 15,
            ),
        itemCount: carts.length);
  }
}
