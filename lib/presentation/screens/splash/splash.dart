part of 'splash_imports.dart';

class Splash extends StatefulWidget {
  static const route = "/splash";

  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      context.go(Onboard.route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: Center(
          child: FadedScaleAnimation(
        child: Image.asset(
          Assets.assetsImagesSplashLogo,
          height: 250.h,
          width: 250.w,
        ),
      )),
    );
  }
}
