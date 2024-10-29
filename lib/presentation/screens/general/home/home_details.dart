part of "home_imports.dart";

class HomeDetails extends StatelessWidget {
  static const route = "/home_details";

  const HomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title:
            "10 Nature Beauty You Should See Before U Die".text.ellipsis.make(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(Assets.assetsImagesBlog2),
            10.h.heightBox,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  "10 Nature Beauty You Should See Before U Die"
                      .text
                      .bold
                      .xl2
                      .make(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(FeatherIcons.eye),
                      5.h.widthBox,
                      "144 Views".text.size(14.sp).make(),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FeatherIcons.thumbsUp,
                            color: MyColors.secondaryColor,
                          )),
                      "0".text.make(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FeatherIcons.thumbsDown,
                            color: Colors.red,
                          )),
                      "0".text.make(),
                    ],
                  ),
                  10.h.heightBox,
                  "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then"
                      .text
                      .start
                      .make(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
