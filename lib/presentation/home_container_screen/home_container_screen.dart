import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/presentation/home_page/home_page.dart';
import 'package:mohammed_s_application12/presentation/my_cart_page/my_cart_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../profile_screen/profile_screen.dart';
import '../wishlist_screen/wishlist_screen.dart';

class HomeContainerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: PersistentTabController(),
      screens: [
        _buildScreen("Home", Icons.home, HomePage()), // Replace HomeScreen() with the actual Home screen widget
        _buildScreen("Cart", Icons.shopping_cart, MyCartPage()), // Replace CartScreen() with the actual Cart screen widget
        _buildScreen("Wishlist", Icons.favorite, WishlistScreen()), // Replace WishlistScreen() with the actual Wishlist screen widget
        _buildScreen("Profile", Icons.person, ProfileScreen()), // Replace ProfileScreen() with the actual Profile screen widget
      ],
      items: _navBarItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.transparent,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.easeInOut,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6,
    );
  }

  PersistentBottomNavBarItem _navBarItem(String title, IconData icon) {
    return PersistentBottomNavBarItem(
      icon: Icon(icon,color: Color(0xff4F7B39),size: 28,),
    );
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      _navBarItem("", Icons.home_outlined,),
      _navBarItem("", Icons.shopping_bag_outlined),
      _navBarItem("", Icons.favorite_border_outlined),
      _navBarItem("", Icons.person_outline),
    ];
  }

  Widget _buildScreen(String title, IconData icon, Widget screen) {
    return Material(
      child: Scaffold(
        body: screen,
      ),
    );
  }

}
