import 'package:bookspire/core/utils/colors.dart';
import 'package:bookspire/core/utils/styles.dart';
import 'package:bookspire/core/widgets/back_leading_appbar.dart';
import 'package:bookspire/core/widgets/custom_loading_indecator_widget.dart';
import 'package:bookspire/features/home/presentation/widgets/book_list_view_item.dart';
import 'package:bookspire/features/search/presentation/view%20model/bloc/search_bloc.dart';
import 'package:bookspire/features/search/presentation/view%20model/bloc/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchView extends StatelessWidget {
  final String query;
  const SearchView({super.key, required this.query});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.backGroundMoreLight,
        leading: const BackLeadingAppbar(),
        title: Text(
          "Search Results",
          style: Styles.styleBoldText20ButomRoboto,
        ),
      ),
      body: SafeArea(
        child: BlocListener<SearchBloc, SearchState>(
          listener: (context, state) {
            if (state is SearchFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content:
                      Text(state.message, style: TextStyle(color: Colors.red)),
                ),
              );
            }
          },
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state is SearchLoading) {
                return const Center(child: CustomLoadingIndecatorWidget());
              } else if (state is SearchSuccess) {
                return state.books.isEmpty
                    ? const Center(child: Text("No results found."))
                    : Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: ListView.builder(
                          padding: EdgeInsets.only(top: 10.h),
                          itemCount: state.books.length,
                          itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            child:
                                BookListViewItem(bookModel: state.books[index]),
                          ),
                        ),
                      );
              }
              return const Center(child: CustomLoadingIndecatorWidget());
            },
          ),
        ),
      ),
    );
  }
}
