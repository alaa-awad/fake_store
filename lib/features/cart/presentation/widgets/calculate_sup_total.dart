import '../../../../core/var.dart';
import '../var.dart';

void calculateSupTotal(){
  for (var element in carts) {
    supTotal = supTotal + (element.product.price * element.quantity);
  }
}