import 'package:bookspire/core/routing/app_routing.dart';
import 'package:bookspire/core/services/services_locator.dart';
import 'package:bookspire/core/utils/colors.dart';
import 'package:bookspire/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookspire/features/home/presentation/view%20model/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:bookspire/features/home/presentation/view%20model/newest%20books%20cubit/newset_books_cubit.dart';
import 'package:bookspire/features/search/data/repos/search_repo_implementation.dart';
import 'package:bookspire/features/search/presentation/view%20model/bloc/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookSpire extends StatelessWidget {
  const BookSpire({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                FeaturedBooksCubit(getIt.get<HomeRepoImplementation>())
                  ..fetchFeaturedBooks()),
        BlocProvider(
            create: (context) =>
                NewsetBooksCubit(getIt.get<HomeRepoImplementation>())
                  ..fetchNewsetBooks()),
        BlocProvider(
          create: (context) => SearchBloc(getIt<SearchRepoImplementation>()),
        )
      ],
      child: ScreenUtilInit(
        splitScreenMode: false,
        designSize: const Size(375, 812),
        child: MaterialApp.router(
          routerConfig: AppRouting.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light().copyWith(
            scaffoldBackgroundColor: ColorsManager.backGroundMoreLight,
          ),
        ),
      ),
    );
  }
}
