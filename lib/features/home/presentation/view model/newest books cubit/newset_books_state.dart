part of 'newset_books_cubit.dart';

sealed class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksInitial extends NewsetBooksState {}
final class NewsetBooksloading extends NewsetBooksState {}
final class NewsetBooksFailure extends NewsetBooksState {
  final String message;

  const NewsetBooksFailure(this.message);
}

final class NewsetBooksSuccess extends NewsetBooksState {
  final List<BookModel> books;

  const NewsetBooksSuccess(this.books);
}

