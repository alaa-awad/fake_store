
import 'package:dartz/dartz.dart';
import 'package:fake_store/core/error/failures.dart';
import 'package:fake_store/features/cart/domain/repositories/cart_repository.dart';
import '../entities/payment.dart';

class UpdatePaymentUseCase {
  final CartRepository cartRepository;

  UpdatePaymentUseCase(this.cartRepository);

  Future<Either<Failure, Unit>> call(Payment payment) async {
    return await cartRepository.updatePayment(payment);
  }
}