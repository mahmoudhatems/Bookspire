import 'package:bloc/bloc.dart';
import 'package:bookspire/features/search/presentation/view%20model/bloc/search_event.dart';
import 'package:bookspire/features/search/presentation/view%20model/bloc/search_state.dart';
import 'package:bookspire/features/search/data/repos/search_repo.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRepo searchRepo;

  SearchBloc(this.searchRepo) : super(SearchInitial()) {
    on<SearchQueryChanged>((event, emit) async {
      emit(SearchLoading());

      final result = await searchRepo.fetchSearchBooks(search: event.query);

      result.fold(
        (failure) => emit(SearchFailure(failure.errmessage)),
        (books) => emit(SearchSuccess(books)),
      );
    });
  }
}
