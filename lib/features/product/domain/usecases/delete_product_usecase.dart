import 'package:dartz/dartz.dart';
import 'package:fake_store/features/product/domain/entities/product.dart';

import '../../../../core/error/failures.dart';
import '../repositories/product_repository.dart';

class DeleteProductUseCase {
  final ProductRepository productRepository;

  const DeleteProductUseCase(this.productRepository);

  Future<Either<Failure, Unit>> call({required int idProduct}) async {
    return await productRepository.deleteProduct(idProduct: idProduct);
  }
}
