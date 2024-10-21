import 'package:flutter/material.dart';
import 'package:supermarket/features/home/presentation/views/widget/custom_bottom_bar.dart';
import 'package:supermarket/features/profile/presentation/views/widget/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        bottomNavigationBar: CustomBottomBar(navbarcurrentIndex: 4),
        body: ProfileViewBody());
  }
}
