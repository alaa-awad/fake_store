import 'package:dartz/dartz.dart';
import 'package:fake_store/core/error/failures.dart';
import 'package:fake_store/features/cart/domain/repositories/cart_repository.dart';
import '../entities/payment.dart';

class AddPaymentUseCase {
  final CartRepository cartRepository;

  AddPaymentUseCase(this.cartRepository);

  Future<Either<Failure, Unit>> call(Payment payment) async {
    return await cartRepository.addPayment(payment);
  }
}