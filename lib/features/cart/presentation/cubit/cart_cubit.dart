import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/var.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  static CartCubit get(context) => BlocProvider.of(context);

  double subTotal = 0;
  double calculateSupTotal() {
    emit(SubTotalChangeLoading());
    subTotal = 0;
    for (var element in carts) {
      subTotal = subTotal + (element.quantity * element.product.price);
    }
    emit(SubTotalChangeSuccess());
    return subTotal;
  }
}
