import 'package:go_router/go_router.dart';
import 'package:smart_app_mamc/models/movie.dart';
import 'package:smart_app_mamc/screens/detail_screen.dart';
import 'package:smart_app_mamc/screens/home_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(
      path: '/detail',
      builder: (context, state) => DetailScreen(movie: state.extra as Movie),
    ),
  ],
);
