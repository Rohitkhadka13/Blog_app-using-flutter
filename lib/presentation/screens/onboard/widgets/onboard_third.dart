part of 'widgets_imports.dart';

class OnboardThird extends StatelessWidget {
  const OnboardThird({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/onboard3.png",
          height: 333.h,
          width: 333.w,
        ),
        "Explore a wide selection of categories, or use the search bar to find specific topics"
            .text
            .size(15.sp)
            .align(TextAlign.center)
            .fontWeight(FontWeight.w500)
            .make(),
      ],
    );
  }
}
