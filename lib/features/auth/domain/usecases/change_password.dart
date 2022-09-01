import 'package:dartz/dartz.dart';
import 'package:fake_store/features/auth/domain/repositories/user_repository.dart';

import '../../../../core/error/failures.dart';

class ChangePassword {
  final UserRepository repository;

  ChangePassword(this.repository);

  Future<Either<Failure, Unit>> call(
      {required String oldPassword, required String newPassword}) async {
    return repository.changePassword(
        oldPassword: oldPassword, newPassword: newPassword);
  }
}
