part of 'profile_imports.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColors.primaryColor,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(FeatherIcons.logOut).pOnly(right: 10))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            Container(
              height: 400.h,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  color: MyColors.primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r),
                    bottomRight: Radius.circular(30.r),
                  )),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.h),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 60.r,
                      backgroundImage:
                          const AssetImage(Assets.assetsImagesBlog2),
                    ),
                    5.h.heightBox,
                    "Rohit".text.bold.xl3.white.make(),
                    "abc@gmail.com".text.xl.white.center.make(),
                    10.h.heightBox,
                    "WebFX is a tech-enabled digital marketing solutions provider, and we create custom strategies for each of our clients based on their needs and goals."
                        .text
                        .xl
                        .white
                        .center
                        .make(),
                    10.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            "0".text.bold.xl2.white.make(),
                            "Posts".text.bold.xl.white.make(),
                          ],
                        ),
                        Column(
                          children: [
                            "0".text.bold.xl2.white.make(),
                            "Followers".text.bold.xl.white.make(),
                          ],
                        ),
                        Column(
                          children: [
                            "0".text.bold.xl2.white.make(),
                            "Following".text.bold.xl.white.make(),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            20.h.heightBox,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "My Posts".text.xl2.bold.make(),
                  GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8.w,
                          mainAxisSpacing: 10.h,
                          childAspectRatio: 1 / 1.2),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Image.asset(Assets.assetsImagesBlog2)
                                .cornerRadius(10.r),
                            5.h.heightBox,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                "10 Nature Beauty You Should See Before U Die"
                                    .text
                                    .medium
                                    .make()
                                    .expand(),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(FeatherIcons.moreVertical))
                              ],
                            )
                          ],
                        );
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
