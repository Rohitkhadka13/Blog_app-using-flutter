part of 'register_imports.dart';

class Register extends StatefulWidget {
  static const route = "/register";

  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SingleChildScrollView(
        child: FadedScaleAnimation(
          child: Column(
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
                      "Register"
                          .text
                          .color(MyColors.primaryColor)
                          .size(18.h)
                          .fontWeight(FontWeight.w700)
                          .makeCentered(),
                      25.h.heightBox,
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
                      20.h.heightBox,
                      "Confirm Password".text.make(),
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
                      10.h.heightBox,
                      SizedBox(
                        width: 212.w,
                        child: CheckboxListTile(
                            contentPadding: EdgeInsets.zero,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: false,
                            onChanged: (value) {},
                            title: "Remember Me".text.make()),
                      ),
                      20.h.heightBox,
                      PrimaryButton(title: "Register", onPressed: () {}),
                      20.h.heightBox,
                      "Already have an account?"
                          .richText
                          .size(14.sp)
                          .semiBold
                          .color(MyColors.primaryColor)
                          .withTextSpanChildren([
                        TextSpan(
                            text: " Login",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context.push(Login.route);
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
      ),
    );
  }
}
