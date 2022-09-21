part of 'cart_cubit.dart';

abstract class CartState extends Equatable {
  const CartState();

  @override
  List<Object> get props => [];
}

class CartInitial extends CartState {}

class SubTotalChangeLoading extends CartState {}
class SubTotalChangeSuccess extends CartState {}

class DeleteProductFromCartLoading extends CartState {}
class DeleteProductFromCartSuccess extends CartState {}
