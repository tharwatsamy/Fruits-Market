import 'package:flutter/material.dart';
import 'package:fruits_market/features/on%20Boarding/presentation/widgets/on_boarding_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingViewBody(),
    );
  }
}