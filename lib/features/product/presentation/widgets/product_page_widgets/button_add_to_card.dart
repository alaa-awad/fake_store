import 'package:flutter/material.dart';

import '../../../../../core/localization/get_os.dart';
import '../../../../../core/var.dart';
import '../../../../../core/widget/adaptive/adaptive_button.dart';
import '../../../domain/entities/product.dart';

class ButtonAddToCart extends StatelessWidget {
  final Product product;
  const ButtonAddToCart({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveButton(
      os: getOs(),
      function: () {
        productsCartList.add(product);
      },
      text: "Add to cart",
      background: Colors.black87,
      width: 150,
      radius: 15,
    );
  }
}
