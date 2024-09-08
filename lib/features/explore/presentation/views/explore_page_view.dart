import 'package:flutter/material.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/explore/data/models/explore_model.dart';
import 'package:supermarket/features/explore/presentation/views/widget/explore_list_item.dart';
import 'package:supermarket/features/home/presentation/views/widget/custom_bottom_bar.dart';
import 'package:supermarket/features/home/presentation/views/widget/custom_search.dart';

class ExplorePageView extends StatefulWidget {
  const ExplorePageView({super.key});

  @override
  State<ExplorePageView> createState() => _ExplorePageViewState();
}

class _ExplorePageViewState extends State<ExplorePageView> {
  static List<ExploreModel> exploreModel = [
    ExploreModel(
        title: 'Fresh Fruits & Vegetables',
        image: 'assets/image/veg.png',
        color: const Color(0xffEEF7F1),
        backgroundColor: const Color(0xff82C69A)),
    ExploreModel(
      title: 'Cooking Oil & Ghee',
      image: 'assets/image/veg.png',
      color: const Color(0xffFEF6ED),
      backgroundColor: const Color(0xffFABD7C),
    ),
    ExploreModel(
      title: 'Meat & Fish',
      image: 'assets/image/veg.png',
      color: const Color(0xffFDE8E4),
      backgroundColor: const Color(0xffF7A593),
    ),
    ExploreModel(
      title: 'Bakery & Snacks',
      image: 'assets/image/veg.png',
      color: const Color(0xffF4EBF7),
      backgroundColor: const Color(0xffD3B0E0),
    ),
    ExploreModel(
      title: 'Dairy & Eggs',
      image: 'assets/image/veg.png',
      color: const Color(0xffFFF8E5),
      backgroundColor: const Color(0xffFDE598),
    ),
    ExploreModel(
      title: 'Beverages',
      image: 'assets/image/veg.png',
      color: const Color(0xffEDF7FC),
      backgroundColor: const Color(0xffB7DFF5),
    ),
    ExploreModel(
      title: 'Dairy & Eggs',
      image: 'assets/image/veg.png',
      color: const Color(0xffFFF8E5),
      backgroundColor: const Color(0xffFDE598),
    ),
    ExploreModel(
      title: 'Beverages',
      image: 'assets/image/veg.png',
      color: const Color(0xffEDF7FC),
      backgroundColor: const Color(0xffB7DFF5),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: const CustomBottomBar(
          navbarcurrentIndex: 1,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text('Find Products', style: AppStyles.styleBold20(context)),
                const SizedBox(height: 20),
                const CustomSearch(),
                const SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 0.8,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: exploreModel.length,
                  itemBuilder: (context, index) =>
                      ExploreListItem(item: exploreModel[index]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
