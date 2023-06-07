import 'package:flutter/widgets.dart';
import 'package:frontend/screens/auth/login_page.dart';
import 'package:frontend/screens/auth/register_page.dart';
import 'package:frontend/screens/category/news_category_page.dart';
import 'package:frontend/screens/home/home_page.dart';
import 'package:frontend/screens/profile/edit_profile_page.dart';
import 'package:frontend/screens/profile/profile_detail_page.dart';
import 'package:frontend/screens/profile/setting_page.dart';
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
            opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
            child: child,
          );
        },
      );
    },
  ),
  GoRoute(
    path: '/setting',
    name: 'setting',
    builder: (context, state) => SettingPage(),
  ),
  GoRoute(
    path: '/profile-detail',
    name: 'profile',
    builder: (context, state) => ProfileDetailPage(),
  ),
  GoRoute(
    path: '/edit-profile',
    name: 'editProfile',
    builder: (context, state) => EditProfilePage(),
  ),
  GoRoute(
    path: '/news-category',
    name: 'newsCategory',
    builder: (context, state) => NewsCategory(),
  ),
]);
