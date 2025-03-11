import 'package:bookspire/core/errors/failures.dart';
import 'package:bookspire/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

/// Home Repo abstract class
/// Explain  what the class does not how it does it
abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String categorie});
}
