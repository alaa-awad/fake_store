import 'package:dartz/dartz.dart';
import 'package:fake_store/core/error/failures.dart';
import 'package:fake_store/features/cart/domain/entities/payment.dart';
import 'package:sqflite/sqflite.dart';

abstract class CartRepository {
  Future<Either<Failure, Database>> createPaymentDataBase();
  Future<Either<Failure, List<Payment>>> getAllPayments(Database database);
  Future<Either<Failure, Unit>> addPayment(Payment payment);
  Future<Either<Failure, Unit>> updatePayment(Payment payment);
  Future<Either<Failure, Unit>> deletePayment(String uId);
}
