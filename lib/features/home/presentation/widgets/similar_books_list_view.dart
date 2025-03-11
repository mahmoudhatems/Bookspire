import 'package:bookspire/core/widgets/custom_error_widget.dart';
import 'package:bookspire/core/widgets/custom_loading_indecator_widget.dart';
import 'package:bookspire/features/home/presentation/view%20model/similar%20books%20cubit/similar_books_cubit_cubit.dart';
import 'package:bookspire/features/home/presentation/widgets/custom_featured_list_viewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubitCubit, SimilarBooksCubitState>(
      builder: (context, state) {
        if (state is SimilarBooksCubitSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.18,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: const CustomBookImage(
              bookCoverImageURL:
                  "https://avatars.githubusercontent.com/u/113213094?s=400&u=58762df8267a952866f4c2b734a0631ae92e4547&v=4",
            ));
      },
    ),
  );
} else if (state is SimilarBooksCubitFailure) {
  return CustomErrorWidget(errorMessage: state.errMessage);
      } else {
        return const CustomLoadingIndecatorWidget();
      }}
    );
  }
}
