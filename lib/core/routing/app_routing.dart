import 'package:bookspire/core/routing/routes.dart';
import 'package:bookspire/core/services/services_locator.dart';
import 'package:bookspire/features/home/data/models/book_model/book_model.dart';
import 'package:bookspire/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookspire/features/home/presentation/view%20model/similar%20books%20cubit/similar_books_cubit_cubit.dart';
import 'package:bookspire/features/home/presentation/views/book_details_view.dart';
import 'package:bookspire/features/home/presentation/views/home_view.dart';
import 'package:bookspire/features/search/data/repos/search_repo.dart';
import 'package:bookspire/features/search/data/repos/search_repo_implementation.dart';
import 'package:bookspire/features/search/presentation/view%20model/bloc/search_bloc.dart';
import 'package:bookspire/features/search/presentation/views/search_result_view.dart';
import 'package:bookspire/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouting {
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: Routes.home, builder: (context, state) => const HomeView()),
    GoRoute(
        path: Routes.bookDetails,
        builder: (context, state) => BlocProvider(
              create: (context) =>
                  SimilarBooksCubitCubit(getIt.get<HomeRepoImplementation>()),
              child: BookDetailsView(
                bookModel: state.extra as BookModel,
              ),
            )),
    GoRoute(
      path: Routes.search,
      builder: (context, state) {
        final query = state.uri.queryParameters['query'] ?? '';
        return BlocProvider(
          create: (context) =>
              SearchBloc(getIt.get<SearchRepoImplementation>()),
          child: SearchView(query: query),
        );
      },
    ),
  ]);
}
