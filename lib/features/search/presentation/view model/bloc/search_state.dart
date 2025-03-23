import 'package:bookspire/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class SearchState extends Equatable {
  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchSuccess extends SearchState {
  final List<BookModel> books;

  SearchSuccess(this.books);

  @override
  List<Object> get props => [books];
}

class SearchFailure extends SearchState {
  final String message; 

  SearchFailure(this.message);

  @override
  List<Object> get props => [message];
}
