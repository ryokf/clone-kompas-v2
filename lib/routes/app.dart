import 'package:flutter/widgets.dart';
import 'package:frontend/screens/auth/login_page.dart';
import 'package:frontend/screens/auth/register_page.dart';
import 'package:frontend/screens/home/home_page.dart';
import 'package:frontend/screens/search/search_page.dart';
import 'package:go_router/go_router.dart';

final route = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => HomePage(),
  ),
  GoRoute(
    path: '/login',
    builder: (context, state) => LoginPage(),
  ),
  GoRoute(
    path: '/register',
    name: 'register',
    builder: (context, state) => RegisterPage(),
  ),
  GoRoute(
    path: '/search',
    name: 'search',
    pageBuilder: (context, state) {
    return CustomTransitionPage(
      child: SearchPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // Change the opacity of the screen using a Curve based on the the animation's
        // value
        return FadeTransition(
          opacity:
              CurveTween(curve: Curves.easeInOutCirc).animate(animation),
          child: child,
        );
      },
    );
  },
    
  ),
]);
