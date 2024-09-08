import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/features/category/presentation/views/category_view.dart';
import 'package:supermarket/features/explore/presentation/views/explore_page_view.dart';
import 'package:supermarket/features/home/presentation/views/home_view.dart';
import 'package:supermarket/features/onboarding/presentation/views/onboarding.dart';
import 'package:supermarket/features/product_details/presentation/product_detail.dart';
import 'package:supermarket/features/search/presentation/views/search_view.dart';
import 'package:supermarket/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const konboarding = '/onboarding';
  static const kproductdetail = '/productdetail';
  static const kExploreView = '/exploreView';
  static const kCategoryView = '/categoryView';
  static const kSearchView = '/searchViews';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: konboarding,
        builder: (BuildContext context, GoRouterState state) {
          return const Onboarding();
        },
      ),
      GoRoute(
        path: kproductdetail,
        builder: (BuildContext context, GoRouterState state) {
          return const ProductDetail();
        },
      ),
      GoRoute(
        path: kExploreView,
        builder: (BuildContext context, GoRouterState state) {
          return const ExplorePageView();
        },
      ),
      GoRoute(
        path: kCategoryView,
        builder: (BuildContext context, GoRouterState state) {
          return const CategoryView();
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
    ],
  );
}
