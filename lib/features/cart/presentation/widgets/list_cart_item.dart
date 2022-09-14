import 'package:fake_store/features/cart/domain/entities/cart.dart';
import 'package:flutter/material.dart';
import '../../../product/domain/entities/product.dart';
import 'calculate_sup_total.dart';

class ListCartItem extends StatefulWidget {
  final CartItem cartItem;
  const ListCartItem({Key? key, required this.cartItem}) : super(key: key);

  @override
  State<ListCartItem> createState() => _ListCartItemState();
}

class _ListCartItemState extends State<ListCartItem> {
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
                image: NetworkImage(widget.cartItem.product.image),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Text(
                      widget.cartItem.product.title,
                      overflow: TextOverflow.ellipsis,
                      //textAlign: TextAlign.center,
                      maxLines: 2,
                    )),
                Row(
                  children:  [
                    const Text(
                      "Size : ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      widget.cartItem.size,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "\$ ",
                      style: TextStyle(color: Colors.orange[400], fontSize: 17),
                    ),
                    Text(
                      "${widget.cartItem.product.price}",
                      style: const TextStyle(fontSize: 17),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            widget.cartItem.quantity +=1;
                          });
                        },
                        icon: const Icon(Icons.add_circle_outline_outlined)),
                    Text("${widget.cartItem.quantity}"),
                    IconButton(
                        onPressed: () {
                         setState(() {
                           if(widget.cartItem.quantity >1){
                             widget.cartItem.quantity -=1;
                           }
                         });
                        },
                        icon: const Icon(Icons.remove_circle_outline_outlined)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
