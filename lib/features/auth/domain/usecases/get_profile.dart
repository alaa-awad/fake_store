import 'package:dartz/dartz.dart';
import 'package:fake_store/features/auth/domain/repositories/user_repository.dart';

import '../../../../core/error/failures.dart';
import '../entities/user.dart';

class GetProfile{
  final UserRepository repository;

  GetProfile(this.repository);

  Future<Either<Failure, User>> call()async{
    return await repository.getProfile();
  }
}