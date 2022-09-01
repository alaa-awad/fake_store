
import 'package:dartz/dartz.dart';
import 'package:fake_store/features/auth/domain/repositories/user_repository.dart';

import '../../../../core/error/failures.dart';

class LogOutUseCase{

  final UserRepository userRepository;

  LogOutUseCase(this.userRepository);

Future<Either<Failure,Unit>> call()async{
 return await userRepository.logOut();
}}