part of 'home_imports.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              Image.asset(Assets.assetsImagesBlog2).cornerRadius(20),
              15.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Latest Post".text.size(16.sp).make(),
                  "See All".text.size(16.sp).make(),
                ],
              ),
              10.h.heightBox,
              ListView.separated(
                  separatorBuilder: (context, index) => 10.h.heightBox,
                  itemCount: 5,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.push(HomeDetails.route);
                          },
                          child: Image.asset(
                            Assets.assetsImagesBlog2,
                            height: 120.h,
                            width: 160.w,
                            fit: BoxFit.cover,
                          ).cornerRadius(20.r),
                        ),
                        10.w.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "10 Nature Beauty You Should See Before U Die"
                                .text
                                .maxLines(2)
                                .overflow(TextOverflow.ellipsis)
                                .size(16.sp)
                                .bold
                                .make(),
                            8.h.heightBox,
                            Row(
                              children: [
                                const Icon(FeatherIcons.clock),
                                2.5.w.widthBox,
                                "6 Months ago".text.size(14.sp).make(),
                              ],
                            ),
                            8.h.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                "150 views".text.size(12.sp).make(),
                                const Icon(FeatherIcons.bookmark),
                              ],
                            )
                          ],
                        ).expand()
                      ],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
