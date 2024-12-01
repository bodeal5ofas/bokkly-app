import 'package:bokkly_app/core/errors/failure.dart';
import 'package:bokkly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchSearchedBook({required String searchTitle});
}
