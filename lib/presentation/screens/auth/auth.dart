part of 'auth_imports.dart';

class Auth extends StatefulWidget {
  static const route = "/auth";

  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.assetsImagesAuth),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            top: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Assets.assetsImagesSplashLogo,
                    color: MyColors.primaryColor,
                    height: 125.h,
                    width: 125.w,
                  ).centered(),
                  const Spacer(),
                  "Explore the world,\nBillions of Thoughts."
                      .text
                      .white
                      .align(TextAlign.left)
                      .size(28.sp)
                      .fontWeight(FontWeight.w700)
                      .make(),
                  20.h.heightBox,
                  PrimaryButton(
                    title: 'Login',
                    onPressed: () {
                      context.push(Login.route);
                    },
                  ),
                  12.h.heightBox,
                  OutlineButton(
                      onPressed: () {
                        context.push(Register.route);
                      },
                      title: 'Register'),
                ],
              ),
            ),
          ),
        ));
  }
}
