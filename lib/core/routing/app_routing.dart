import 'package:bookspire/core/routing/routes.dart';
import 'package:bookspire/features/home/presentation/views/book_details_view.dart';
import 'package:bookspire/features/home/presentation/views/home_view.dart';
import 'package:bookspire/features/search/presentation/views/search_result_view.dart';
import 'package:bookspire/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouting {
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: Routes.home, builder: (context, state) => const HomeView()),
    GoRoute(
        path: Routes.bookDetails,
        builder: (context, state) => const BookDetailsView()),
    GoRoute(
        path: Routes.search, builder: (context, state) => const SearchView()),
  ]);
}
