import 'package:flutter/material.dart';
import 'package:supermarket/features/profile_details/presentation/views/widget/profile_details_body.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: ProfileDetailsBody()));
  }
}
