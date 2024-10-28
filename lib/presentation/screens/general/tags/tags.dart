part of 'tags_imports.dart';

class Tags extends StatefulWidget {
  const Tags({super.key});

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: const Text("Tags"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(FeatherIcons.plus))
        ],
        centerTitle: true,
      ),
      body: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) => 10.h.heightBox,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: "${index + 1}".text.make(),
                title: "Tags".text.make(),
                trailing: SizedBox(
                  width: 100.w,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FeatherIcons.edit2,
                            color: MyColors.secondaryColor,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FeatherIcons.trash2,
                            color: Colors.red,
                          )),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
