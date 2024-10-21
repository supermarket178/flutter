import 'package:flutter/material.dart';
import 'package:supermarket/core/utils/app_router.dart';
import 'package:supermarket/features/product_details/presentation/widget/custom_divider.dart';
import 'package:supermarket/features/profile/presentation/views/widget/logout_button.dart';
import 'package:supermarket/features/profile/presentation/views/widget/profile_header.dart';
import 'package:supermarket/features/profile/presentation/views/widget/profile_list_item.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});
  final List<Widget> items = const [
    ProfileListItem(
      icon: 'assets/image/orders.svg',
      title: 'Orders',
      route: AppRouter.kOrdersView,
    ),
    ProfileListItem(
      icon: 'assets/image/My Details icon.svg',
      title: 'My Details',
      route: AppRouter.kProfileDetailsView,
    ),
    ProfileListItem(
      icon: 'assets/image/about icon.svg',
      title: 'About',
      route: AppRouter.kOrdersView,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70, bottom: 30),
      child: Column(
        children: [
          const ProfileHeader(),
          const SizedBox(height: 20),
          ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const CustomDivider(),
                    items[index],
                  ],
                );
              }),
          const CustomDivider(),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 67,
                decoration: BoxDecoration(
                  color: const Color(0xffF2F3F2),
                  borderRadius: BorderRadius.circular(19),
                ),
                child: const LogoutButton(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
