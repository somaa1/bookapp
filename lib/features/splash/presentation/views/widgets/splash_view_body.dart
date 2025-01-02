import 'package:bookapp/constants.dart';
import 'package:bookapp/core/utils/app_router.dart';
import 'package:bookapp/core/utils/assets.dart';
import 'package:bookapp/features/home/presentation/views/home_view.dart';
import 'package:bookapp/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    initSlidingAnimation();
    navigateToHome();
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



  void initSlidingAnimation() {
    animatedContainer=AnimationController(duration: const Duration(seconds: 1), vsync: this,);
    slidingAnimation=Tween<Offset>(begin:const Offset(0, 2),end: Offset.zero).animate(animatedContainer );
                                                    //-x,y
    animatedContainer.forward();
  }

  void navigateToHome() {
    Future.delayed(Duration(seconds: 2),() {
      // Get.to(() => const HomeView(),
      //     // calculations
      //     transition: Transition.fade,
      //     duration: kTransactionDuration);
GoRouter.of(context).push(AppRouter.kHomeView);
    },);
  }
}

