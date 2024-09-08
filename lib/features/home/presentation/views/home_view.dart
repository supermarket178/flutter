import 'package:flutter/material.dart';
import 'package:supermarket/features/home/presentation/views/home_view_body.dart';
import 'package:supermarket/features/home/presentation/views/widget/custom_bottom_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar:  const CustomBottomBar(navbarcurrentIndex: 0,),
        backgroundColor: Colors.white,
        body: HomeViewBody(
          pageController: pageController,
        ),
      ),
    );
  }
}
