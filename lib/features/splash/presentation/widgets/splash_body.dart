import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  _SplashViewBodyState createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Spacer(),
         FadeTransition(
           opacity: fadingAnimation!,
           child: Text(
                  'Fruit Market',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 51,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xffffffff),
                  ),
                ),
         ),
          Image.asset('assets/images/splash_view_image.png'),
          // Adobe XD layer: 'mix_fruit_png_11' (shape)
        ],
      ),
    );
  }
}
