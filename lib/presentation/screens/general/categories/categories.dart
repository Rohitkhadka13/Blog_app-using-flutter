part of 'categories_imports.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: const Text("Categories"),
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
                title: "Enter".text.make(),
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
