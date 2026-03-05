import 'package:go_router/go_router.dart';
import 'package:sudoku/screens/game_screen.dart';
import 'package:sudoku/screens/home_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
      GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
      GoRoute(path: '/game', builder: (context, state) => const GameScreen()),
    ],
  );
}
