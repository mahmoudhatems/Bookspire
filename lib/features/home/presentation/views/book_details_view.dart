import 'package:bookspire/features/home/data/models/book_model/book_model.dart';
import 'package:bookspire/features/home/presentation/view%20model/similar%20books%20cubit/similar_books_cubit_cubit.dart';
import 'package:bookspire/features/home/presentation/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;


  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubitCubit>(context).fetchSimilarBooks(
        categorie: widget.bookModel.volumeInfo.categories![0]
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookDetailsViewBody()),
    );
  }
}
