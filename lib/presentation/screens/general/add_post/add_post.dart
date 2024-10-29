part of 'add_post_imports.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  QuillController _controller = QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: const Text("Add Post"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(FeatherIcons.check))
        ],
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        children: [
          20.h.heightBox,
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ432ju-gdS2nl6CEobTaFXEe6_gRmK5DkWuQ&s",
                fit: BoxFit.fill,
                height: 250.h,
                width: MediaQuery.sizeOf(context).width,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FeatherIcons.camera,
                    color: MyColors.primaryColor,
                  ))
            ],
          ),
          10.h.heightBox,
          const VxTextField(
            fillColor: Colors.transparent,
            borderColor: MyColors.primaryColor,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10,
            hint: "Title",
          ),
          10.h.heightBox,
          const VxTextField(
            fillColor: Colors.transparent,
            borderColor: MyColors.primaryColor,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10,
            hint: "Slug",
          ),
          10.h.heightBox,
          Container(
            height: 60.h,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Tags".text.make(),
                const Icon(FeatherIcons.chevronRight)
              ],
            ),
          ),
          10.h.heightBox,
          Container(
            height: 60.h,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Categories".text.make(),
                const Icon(FeatherIcons.chevronRight)
              ],
            ),
          ),
          15.h.heightBox,
          QuillSimpleToolbar(
            controller: _controller,
            configurations: const QuillSimpleToolbarConfigurations(),
          ),
          SizedBox(
            height: 500.h,
            child: QuillEditor.basic(
              controller: _controller,
              configurations: const QuillEditorConfigurations(),
            ),
          )
        ],
      ),
    );
  }
}
