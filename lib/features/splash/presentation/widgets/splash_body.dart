import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Spacer(),
          Text(
            'Fruit Market',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
            ),
          ),
          Image.asset('assets/images/splash_view_image.png'),
          // Adobe XD layer: 'mix_fruit_png_11' (shape)
        ],
      ),
    );
  }
}
