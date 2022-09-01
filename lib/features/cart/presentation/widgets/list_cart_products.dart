import 'package:fake_store/features/cart/presentation/widgets/list_cart_item.dart';
import 'package:flutter/material.dart';

import '../../../../core/var.dart';

class ListCartProducts extends StatelessWidget {
  const ListCartProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
        itemBuilder: (context, index) {
          return ListCartItem(
            product: productsCartList[index],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
              height: 15,
            ),
        itemCount: productsCartList.length);
  }
}
