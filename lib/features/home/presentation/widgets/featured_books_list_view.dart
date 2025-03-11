import 'package:bookspire/core/routing/routes.dart';
import 'package:bookspire/core/widgets/custom_error_widget.dart';
import 'package:bookspire/core/widgets/custom_loading_indecator_widget.dart';
import 'package:bookspire/features/home/presentation/view%20model/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:bookspire/features/home/presentation/widgets/custom_featured_list_viewItem.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

/// FeaturedBooksListView is a widget that displays the featured book list.
/// It uses CarouselSlider instead of ListView.builder for a smoother experience.
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.29,
            child: CarouselSlider.builder(
              itemCount: state.books.length,
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.5,
                viewportFraction:
                    0.5, // Controls how much of the next item is visible
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds:3),
              ),
              itemBuilder: (context, index, realIndex) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.0.w),
                  child: GestureDetector(
                    onTap: () {
                       GoRouter.of(context).push(Routes.bookDetails,extra: state.books[index]);
                    },
                    child: CustomBookImage(
                      bookCoverImageURL:
                          state.books[index].volumeInfo.imageLinks!.thumbnail??'',
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMessage: state.message);
        } else {
          return const CustomLoadingIndecatorWidget();
        }
      },
    );
  }
}
