import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/features/category/presentation/views/category_view.dart';
import 'package:supermarket/features/code/presentation/views/code_view.dart';
import 'package:supermarket/features/explore/presentation/views/explore_page_view.dart';
import 'package:supermarket/features/favorite/presentation/views/favorite_view.dart';
import 'package:supermarket/features/home/presentation/views/home_view.dart';
import 'package:supermarket/features/login/presentation/views/login_view.dart';
import 'package:supermarket/features/onboarding/presentation/views/onboarding.dart';
import 'package:supermarket/features/orders/presentation/views/orders_view.dart';
import 'package:supermarket/features/phone_number/presentation/views/phone_number.dart';
import 'package:supermarket/features/location/presentation/views/location_view.dart';
import 'package:supermarket/features/product_details/presentation/product_detail.dart';
import 'package:supermarket/features/profile/presentation/views/profile_view.dart';
import 'package:supermarket/features/profile_details/presentation/views/profile_details.dart';
import 'package:supermarket/features/search/presentation/views/search_view.dart';
import 'package:supermarket/features/sign_in/presentation/views/sign_in_view.dart';
import 'package:supermarket/features/signup/presentation/views/signup_view.dart';
import 'package:supermarket/features/splash/presentation/views/splash_view.dart';
import 'package:supermarket/features/mycart/presentation/views/my_cart_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const konboarding = '/onboarding';
  static const kproductdetail = '/productdetail';
  static const kExploreView = '/exploreView';
  static const kCategoryView = '/categoryView';
  static const kSearchView = '/searchViews';
  static const kMyCartView = '/myCartViews';
  static const kFavoriteView = '/favoriteViews';
  static const kProfileView = '/profileViews';
  static const kOrdersView = '/ordersViews';
  static const kProfileDetailsView = '/profileDetailsViews';
  static const kSigninView = '/signinViews';
  static const kPhoneNumber = '/phoneNumberViews';
  static const kCodeView = '/codeViews';
  static const kLocationView = '/locationViews';
  static const kLoginView = '/loginViews';
  static const kSignupView = '/signupViews';

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
          return FadeIn(child: const HomeView());
        },
      ),
      GoRoute(
        path: konboarding,
        builder: (BuildContext context, GoRouterState state) {
          return FadeIn(child: const Onboarding());
        },
      ),
      GoRoute(
        path: kproductdetail,
        builder: (BuildContext context, GoRouterState state) {
          return FadeIn(child: const ProductDetail());
        },
      ),
      GoRoute(
        path: kExploreView,
        builder: (BuildContext context, GoRouterState state) {
          return FadeIn(child: const ExplorePageView());
        },
      ),
      GoRoute(
        path: kCategoryView,
        builder: (BuildContext context, GoRouterState state) {
          return FadeIn(child: const CategoryView());
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) {
          return FadeIn(child: const SearchView());
        },
      ),
      GoRoute(
        path: kMyCartView,
        builder: (BuildContext context, GoRouterState state) {
          return FadeIn(child: const MyCartView());
        },
      ),
      GoRoute(
        path: kFavoriteView,
        builder: (BuildContext context, GoRouterState state) {
          return FadeIn(child: const FavoriteView());
        },
      ),
      GoRoute(
        path: kProfileView,
        builder: (BuildContext context, GoRouterState state) {
          return FadeIn(child: const ProfileView());
        },
      ),
      GoRoute(
        path: kOrdersView,
        builder: (BuildContext context, GoRouterState state) {
          return FadeIn(child: const OrdersView());
        },
      ),
      GoRoute(
        path: kProfileDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return FadeIn(child: const ProfileDetails());
        },
      ),
      GoRoute(
        path: kSigninView,
        builder: (BuildContext context, GoRouterState state) {
          return FadeIn(child: const SignInView());
        },
      ),
      GoRoute(
        path: kPhoneNumber,
        builder: (BuildContext context, GoRouterState state) {
          return FadeIn(child: const PhoneNumber());
        },
      ),
      GoRoute(
        path: kCodeView,
        builder: (BuildContext context, GoRouterState state) {
          return FadeIn(child: const CodeView());
        },
      ),
      GoRoute(
        path: kLocationView,
        builder: (BuildContext context, GoRouterState state) {
          return FadeIn(child: const LocationView());
        },
      ),
      GoRoute(
        path: kLoginView,
        builder: (BuildContext context, GoRouterState state) {
          return FadeIn(child: const LoginView());
        },
      ),
      GoRoute(
        path: kSignupView,
        builder: (BuildContext context, GoRouterState state) {
          return FadeIn(child: const SignupView());
        },
      ),
    ],
  );
}
