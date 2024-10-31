import 'package:facebook_ui_design/colors/colors.dart';
import 'package:facebook_ui_design/screens/friend_requets_screen.dart';
import 'package:facebook_ui_design/screens/home_screen.dart';
import 'package:facebook_ui_design/screens/market_place_screen.dart';
import 'package:facebook_ui_design/screens/notifications_screens.dart';
import 'package:facebook_ui_design/screens/profile_screen.dart';
import 'package:facebook_ui_design/screens/reels_screen.dart';
import 'package:flutter/material.dart';
class TabLayoutHomeScreen extends StatelessWidget {
  static const id="TabLayoutHomeScreen";

  const TabLayoutHomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 6, child: Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text("Facebook",style: TextStyle(
            color: MyColors.primaryColor,
          ),),
        ),
        toolbarHeight: 35,
        bottom:  TabBar(
            indicatorColor: MyColors.primaryColor,
            labelColor: MyColors.primaryColor,
            tabs: const [
          Tab(icon: Icon(Icons.home)),
          Tab(icon: Icon(Icons.video_library)),
          Tab(icon: Icon(Icons.group)),
          Tab(icon: Icon(Icons.store)),
          Tab(icon: Icon(Icons.notifications)),
          Tab(icon: Icon(Icons.person)),

        ]),
      ),
      body: const TabBarView(children: [
        // these screens will display in accordance with selected tabs
        HomeScreen(),
        ReelsScreen(),
        FriendRequetsScreen(),
        MarketPlaceScreen(),
        NotificationsScreens(),
        ProfileScreen()

      ]),
    ));
  }
}


