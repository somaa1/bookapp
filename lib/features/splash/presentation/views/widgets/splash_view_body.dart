import 'package:bookapp/core/utils/assets.dart';
import 'package:bookapp/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animatedContainer;
late  Animation<Offset>  slidingAnimation;
@override
  void initState() {
    super.initState();
    animatedContainer=AnimationController(duration: const Duration(seconds: 1), vsync: this,);
slidingAnimation=Tween<Offset>(begin:const Offset(2, 0),end: Offset.zero).animate(animatedContainer );
animatedContainer.forward();
}
@override
  void dispose() {
  animatedContainer.dispose(); // Dispose of the controller
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 6,),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }
}

