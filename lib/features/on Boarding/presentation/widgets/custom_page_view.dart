import 'package:flutter/material.dart';
import 'package:fruits_market/features/on%20Boarding/presentation/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key,@required this.pageController}) : super(key: key);
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController ,
      children: [
        PageViewItem(
          image: 'assets/images/onboarding1.png',
          title: 'E Shopping',
          subTitle: 'Explore  top organic fruits & grab them',
        ),
        PageViewItem(
          image: 'assets/images/onboarding2.png',
          title: 'Delivery on the way',
          subTitle: 'Get your order by speed delivery',
        ),
        PageViewItem(
          image: 'assets/images/onboarding3.png',
          title: 'Delivery Arrived',
          subTitle: 'Order is arrived at your Place',
        ),
      ],
    );
  }
}
