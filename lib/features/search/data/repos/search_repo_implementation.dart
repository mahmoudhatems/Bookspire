import 'package:bookspire/core/errors/failures.dart';
import 'package:bookspire/core/services/api_service.dart';
import 'package:bookspire/features/home/data/models/book_model/book_model.dart';
import 'package:bookspire/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImplementation implements SearchRepo {
  final ApiService apiService;

  SearchRepoImplementation({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks({required String search}) async {
    try {
      var data = await apiService.get(endpoint: 'volumes?Filtering=free-ebooks&q=$search');
      List<BookModel> books = (data['items'] as List)
          .map((item) => BookModel.fromJson(item))
          .toList();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
