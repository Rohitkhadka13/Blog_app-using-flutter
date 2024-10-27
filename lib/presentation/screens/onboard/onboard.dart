part of 'onboard_imports.dart';

class Onboard extends StatefulWidget {
  static const route = "/onboard";

  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  OnBoardViewModel viewModel = OnBoardViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Image.asset(
                Assets.assetsImagesSplashLogo,
                color: MyColors.primaryColor,
                height: 125.h,
                width: 125.w,
              ),
              PageView(
                controller: viewModel.pageController,
                children: const [
                  OnboardFirst(),
                  OnboardSecond(),
                  OnboardThird(),
                ],
              ).expand(),
              SizedBox(
                height: 61.h,
              ),
              ElevatedButton(
                onPressed: () {
                  context.go(Auth.route);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.primaryColor,
                    minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11.r),
                    )),
                child: "Get Started"
                    .text
                    .size(16.sp)
                    .fontWeight(FontWeight.w700)
                    .make(),
              ),
              SizedBox(
                height: 61.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Skip"
                      .text
                      .size(16.sp)
                      .fontWeight(FontWeight.w700)
                      .color(MyColors.primaryColor)
                      .make(),
                  SmoothPageIndicator(
                    controller: viewModel.pageController,
                    count: 3,
                    axisDirection: Axis.horizontal,
                    effect: const SlideEffect(
                        spacing: 8.0,
                        radius: 2.5,
                        dotWidth: 12.0,
                        dotHeight: 12.0,
                        paintStyle: PaintingStyle.stroke,
                        strokeWidth: 1,
                        dotColor: Colors.grey,
                        activeDotColor: MyColors.primaryColor),
                  ),
                  " Next"
                      .text
                      .size(16.sp)
                      .color(MyColors.primaryColor)
                      .fontWeight(FontWeight.w700)
                      .make(),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
