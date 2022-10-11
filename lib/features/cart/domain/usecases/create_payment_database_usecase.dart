import 'package:dartz/dartz.dart';
import 'package:fake_store/core/error/failures.dart';
import 'package:fake_store/features/cart/domain/repositories/cart_repository.dart';
import 'package:sqflite/sqflite.dart';

class CreatePaymentDataBaseUseCase {
  final CartRepository cartRepository;

  CreatePaymentDataBaseUseCase(this.cartRepository);

  Future<Either<Failure,Database>> call() async {
    return await cartRepository.createPaymentDataBase();
  }
}
