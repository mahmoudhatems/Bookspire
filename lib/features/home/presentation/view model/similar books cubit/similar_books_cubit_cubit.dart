import 'package:bloc/bloc.dart';
import 'package:bookspire/features/home/data/models/book_model/book_model.dart';
import 'package:bookspire/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_cubit_state.dart';

class SimilarBooksCubitCubit extends Cubit<SimilarBooksCubitState> {
  SimilarBooksCubitCubit(this.homeRepo) : super(SimilarBooksCubitInitial());

  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks  ( {required  String categorie}) async {
    emit(SimilarBooksCubitLoading());
    final result = await homeRepo.fetchSimilarBooks(
      categorie: categorie,
    );
    result.fold(
      (failure) => emit(SimilarBooksCubitFailure(failure.errmessage)),
      (books) => emit(SimilarBooksCubitSuccess(books)),
    );
  }
}
