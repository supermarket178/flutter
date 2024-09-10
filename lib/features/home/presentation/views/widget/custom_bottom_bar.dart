import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/constants.dart';
import 'package:supermarket/core/utils/app_router.dart';
import 'package:supermarket/core/utils/styles.dart';

class CustomBottomBar extends StatefulWidget {
  final int navbarcurrentIndex;

  const CustomBottomBar({super.key, required this.navbarcurrentIndex});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  late int _currentIndex; 

  final List<String> routes = [
    AppRouter.kHomeView, 
    AppRouter.kExploreView, 
    AppRouter.kMyCartView,
    AppRouter.kFavoriteView,
    AppRouter.kProfileView,
  ];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget
        .navbarcurrentIndex; 
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFEF7FF),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 37,
            offset: const Offset(0, -12),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              GoRouter.of(context)
                  .go(routes[index]); 
            });
          },
          unselectedItemColor: Colors.black,
          selectedItemColor: kPrimaryColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          unselectedLabelStyle: AppStyles.styleSemiBold12(context),
          selectedLabelStyle: AppStyles.styleSemiBold12(context),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.store_outlined,
              ),
              label: 'Store',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
