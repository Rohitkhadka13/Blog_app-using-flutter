part of 'general_imports.dart';

class General extends StatefulWidget {
  static const route = "/general";

  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  List<TabItem> items = [
    const TabItem(
      icon: FeatherIcons.home,
      title: "Home",
    ),
    const TabItem(
      icon: FeatherIcons.tag,
      title: "Tags",
    ),
    const TabItem(
      icon: FeatherIcons.plus,
      title: "Add",
    ),
    const TabItem(
      icon: FeatherIcons.hash,
      title: "Categories",
    ),
    const TabItem(
      icon: FeatherIcons.user,
      title: "Profile",
    ),
  ];
  int visit = 0;

  List<Widget> pages = [
    const Home(),
    const Tags(),
    const AddPost(),
    const Categories(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(visit),
      bottomNavigationBar: BottomBarInspiredOutside(
        items: items,
        backgroundColor: MyColors.white,
        color: MyColors.primaryColor,
        colorSelected: MyColors.primaryColor,
        indexSelected: visit,
        onTap: (int index) => setState(() {
          visit = index;
        }),
        top: -15,
        animated: true,
        itemStyle: ItemStyle.circle,
        chipStyle:
            const ChipStyle(notchSmoothness: NotchSmoothness.verySmoothEdge),
      ),
    );
  }
}
