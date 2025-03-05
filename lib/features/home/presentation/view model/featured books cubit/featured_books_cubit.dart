import 'package:bloc/bloc.dart';
import 'package:bookspire/features/home/data/models/book_model/book_model.dart';
import 'package:bookspire/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksloading());
    final result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(FeaturedBooksFailure(failure.errmessage)),
      (books) => emit(FeaturedBooksSuccess(books)),
    );
  }
}
