import 'package:frontend/screens/home_page.dart';
import 'package:go_router/go_router.dart';

final route = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => HomePage(),
  ),
]);
