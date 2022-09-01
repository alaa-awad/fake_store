import 'package:dartz/dartz.dart';
import 'package:fake_store/features/product/domain/entities/product.dart';

import '../../../../core/error/failures.dart';
import '../repositories/product_repository.dart';

class UpdateProductUseCase {
  final ProductRepository productRepository;

  const UpdateProductUseCase(this.productRepository);

  Future<Either<Failure, Unit>> call({required Product product}) async {
    return await productRepository.updateProduct(product: product);
  }
}
