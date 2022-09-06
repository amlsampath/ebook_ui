import 'package:ebook_app_ui/constant/color_constant.dart';
import 'package:ebook_app_ui/ui/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  List<Widget> _buildScreens() {
    return [
      const Home(),
      Container(),
      Container(),
      Container(),
    ];
  }

  bool _hideNavBar = true;

  @override
  void initState() {
    super.initState();

    _hideNavBar = false;
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      bottomSheetItem(
        icon: CupertinoIcons.home,
        title: ("Home"),
      ),
      bottomSheetItem(
        icon: Icons.category_outlined,
        title: ("Book"),
      ),
      bottomSheetItem(
        icon: Icons.notifications_none_outlined,
        title: ("Notification"),
      ),
      bottomSheetItem(
        icon: Icons.menu,
        title: ("Menu"),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _navBarsItems(),
      stateManagement: false,
      confineInSafeArea: true,
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      //   hideNavigationBar: _hideNavBar,
      backgroundColor: ColorConstant.appColor, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
// Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(
          30.0,
        ),
        colorBehindNavBar: Colors.white,
      ),

      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style1, // Choose the nav bar style with this property.
    );
  }

  PersistentBottomNavBarItem bottomSheetItem(
      {required IconData icon, required String title}) {
    return PersistentBottomNavBarItem(
      activeColorSecondary: Colors.white,
      icon: Icon(icon),
      title: (title),
      activeColorPrimary: CupertinoColors.white,
      inactiveColorPrimary: CupertinoColors.white,
    );
  }
}

// class CustomBottomNavigationBar extends StatefulWidget {
//   CustomBottomNavigationBar({Key? key}) : super(key: key);

//   @override
//   _MyNavigationBarState createState() => _MyNavigationBarState();
// }

// class _MyNavigationBarState extends State<CustomBottomNavigationBar> {
//   int _selectedIndex = 0;

//   List<Widget> _buildScreens = [
//     Home(),
//     Container(),
//     Container(),
//     Container(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _buildScreens[_selectedIndex],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//           items: <BottomNavigationBarItem>[
//             bottomSheetItem(icon: Icons.home, title: 'Home'),
//             bottomSheetItem(icon: Icons.search, title: 'Search'),
//             bottomSheetItem(icon: Icons.person, title: 'Profile'),
//             bottomSheetItem(icon: Icons.notifications, title: 'Notification'),
//           ],
//           type: BottomNavigationBarType.shifting,
//           currentIndex: _selectedIndex,
//           selectedItemColor: Colors.black,
//           onTap: _onItemTapped,
//           elevation: 5),
//     );
//   }

//   BottomNavigationBarItem bottomSheetItem(
//       {required IconData icon, required String title}) {
//     return BottomNavigationBarItem(
//         icon: Icon(icon),
//         label: title,
//         backgroundColor: ColorConstant.appColor);
//   }
// }
