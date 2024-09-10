import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/profile/presentation/views/widget/logout_button.dart';
import 'package:supermarket/features/profile_details/presentation/views/widget/profile_details_list_item.dart';

class ProfileDetailsBody extends StatelessWidget {
  ProfileDetailsBody({super.key});
  final List<Widget> items = [
    const ProfileDetailsListItem(
        title: 'Email',
        subtitle: 'sherry.ahmos@gmail.com',
        icon: Icons.email_outlined),
    const ProfileDetailsListItem(
        title: 'Phone number',
        subtitle: '012555548613',
        icon: Icons.phone_android_outlined),
    const ProfileDetailsListItem(
        title: 'Address',
        subtitle: 'your zone, your area',
        icon: Icons.location_on_outlined),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 329,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/image/profilebackground.png', // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  top: 20,
                  left: 25,
                  child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).pop();
                      },
                      child: SvgPicture.asset('assets/image/arrow.svg'))),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      children: [
                        Image.asset('assets/image/bigprofile.png'),
                        const Positioned(
                            top: 5,
                            right: 5,
                            child: Icon(
                              Icons.edit_outlined,
                              color: Color(0xff53B175),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Afsar Hossen',
                      style: AppStyles.styleBold20(context),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ListView.builder(
            itemBuilder: (context, index) {
              return items[index];
            },
            itemCount: 3,
            shrinkWrap: true),
        const Spacer(),
        const LogoutButton(),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
