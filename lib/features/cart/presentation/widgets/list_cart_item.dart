import 'package:flutter/material.dart';

import '../../../../core/font_icon/icon_broken.dart';
import '../../../product/domain/entities/product.dart';

class ListCartItem extends StatelessWidget {
  final Product product;
  const ListCartItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            height: 200,
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(product.image),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width*0.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width*0.4,
                  child: Text(
                    product.title,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  )),
              Row(
                children: const [
                  Text("Size :"),
                  Text("M"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "\$ ",
                    style: TextStyle(color: Colors.orange[400], fontSize: 17),
                  ),
                  Text(
                    "${product.price}",
                    style: const TextStyle(fontSize: 17),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(IconBroken.More_Square)),
                  Text("1"),
                  IconButton(
                      onPressed: () {}, icon: Icon(IconBroken.More_Square)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
