part of 'login_imports.dart';

class Login extends StatefulWidget {
  static const route = "/login";

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: FadedScaleAnimation(
        child: ListView(
          children: [
            Image.asset(
              Assets.assetsImagesSplashLogo,
              color: MyColors.white,
              height: 125.h,
              width: 125.w,
            ).centered(),
            50.h.heightBox,
            Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36.h),
                    topRight: Radius.circular(36.h),
                  )),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    50.h.heightBox,
                    "Login"
                        .text
                        .color(MyColors.primaryColor)
                        .size(18.h)
                        .fontWeight(FontWeight.w700)
                        .makeCentered(),
                    48.h.heightBox,
                    "Email".text.make(),
                    8.h.heightBox,
                    const VxTextField(
                      fillColor: Colors.transparent,
                      borderColor: MyColors.primaryColor,
                      borderType: VxTextFieldBorderType.roundLine,
                      borderRadius: 10,
                      prefixIcon: Icon(
                        Icons.email,
                        color: MyColors.primaryColor,
                      ),
                    ),
                    20.h.heightBox,
                    "Password".text.make(),
                    8.h.heightBox,
                    const VxTextField(
                      isPassword: true,
                      obscureText: true,
                      fillColor: Colors.transparent,
                      borderColor: MyColors.primaryColor,
                      borderType: VxTextFieldBorderType.roundLine,
                      borderRadius: 10,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: MyColors.primaryColor,
                      ),
                    ),
                    25.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 212.w,
                          child: CheckboxListTile(
                              contentPadding: EdgeInsets.zero,
                              controlAffinity: ListTileControlAffinity.leading,
                              value: false,
                              onChanged: (value) {},
                              title: "Remember Me".text.make()),
                        ),
                        "Forgot Password?".text.size(14.sp).make(),
                      ],
                    ),
                    40.h.heightBox,
                    PrimaryButton(
                        title: "Login",
                        onPressed: () {
                          context.go(General.route);
                        }),
                    20.h.heightBox,
                    "Don't have an account?"
                        .richText
                        .size(14.sp)
                        .semiBold
                        .color(MyColors.primaryColor)
                        .withTextSpanChildren([
                      TextSpan(
                          text: " Sign up",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.push(Register.route);
                            },
                          style: const TextStyle(fontWeight: FontWeight.w500))
                    ]).makeCentered()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
