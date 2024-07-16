import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with  SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;
 
  @override
  void initState(){
    super.initState();
    initStateAnimation();
navegateTo();


  }
  @override
  void dispose(){
    super.dispose();
    disposeAnimation;
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(child: Image.asset(AssetsData.logo)),
        const SizedBox(height: 10,),
        AnimatedBuilder(
          animation: slideAnimation,
          builder: (BuildContext context, _) {
            return SlideTransition(position: slideAnimation,
                child: const Text('read free books',textAlign: TextAlign.center,));
          },

        )



      ],
    );
  }

  void initStateAnimation(){
    animationController=AnimationController(vsync: this,duration:const Duration(seconds: 1));
    slideAnimation=Tween<Offset>(begin:const Offset(0,2) ,end:const Offset(0, 0) )
        .animate(animationController) ;

    animationController.forward();

    // slideAnimation.addListener(() {
    //   setState(() {
    //
    //   });
    // });

  }
  void disposeAnimation(){
    animationController.dispose();
  }
  void navegateTo(){
    Future.delayed( Duration(seconds: 3),(){
Navigator.pushNamed(context, '/home');
    });

  }

}



