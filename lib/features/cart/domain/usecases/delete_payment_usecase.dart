import 'package:dartz/dartz.dart';
import 'package:fake_store/core/error/failures.dart';
import 'package:fake_store/features/cart/domain/repositories/cart_repository.dart';

class DeletePaymentUseCase {
  final CartRepository cartRepository;

  DeletePaymentUseCase(this.cartRepository);

  Future<Either<Failure, Unit>> call(String uId) async {
    return await cartRepository.deletePayment(uId);
  }
}
