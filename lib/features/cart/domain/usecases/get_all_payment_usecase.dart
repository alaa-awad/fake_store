import 'package:dartz/dartz.dart';
import 'package:fake_store/core/error/failures.dart';
import 'package:fake_store/features/cart/domain/repositories/cart_repository.dart';
import 'package:sqflite/sqflite.dart';

import '../entities/payment.dart';

class GetAllPaymentUseCase {
  final CartRepository cartRepository;

  GetAllPaymentUseCase(this.cartRepository);

  Future<Either<Failure, List<Payment>>> call(Database database) async {
    return await cartRepository.getAllPayments(database);
  }
}
