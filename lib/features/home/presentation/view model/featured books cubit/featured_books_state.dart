part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksloading extends FeaturedBooksState {}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String message;

  const FeaturedBooksFailure(this.message);


}

final class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

  const FeaturedBooksSuccess(this.books);

}
