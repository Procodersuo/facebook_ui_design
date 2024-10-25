import 'package:facebook_ui_design/colors/colors.dart';
import 'package:facebook_ui_design/screens/friend_requets_screen.dart';
import 'package:facebook_ui_design/screens/home_screen.dart';
import 'package:facebook_ui_design/screens/market_place_screen.dart';
import 'package:facebook_ui_design/screens/notifications_screens.dart';
import 'package:facebook_ui_design/screens/profile_screen.dart';
import 'package:facebook_ui_design/screens/reels_screen.dart';
import 'package:flutter/material.dart';

class TabLayoutHomeScreen extends StatefulWidget {
  static const id = "TabLayoutHomeScreen";

  const TabLayoutHomeScreen({super.key});

  @override
  State<TabLayoutHomeScreen> createState() => _TabLayoutHomeScreenState();
}

class _TabLayoutHomeScreenState extends State<TabLayoutHomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _showTitle = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
    _tabController.addListener(_handleTabChange);
  }

  void _handleTabChange() {
    setState(() {
      _showTitle = _tabController.index == 0; // Show title only on the Home tab
    });
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backGroundColor,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(color: Colors.white),
              ),
            ),
            backgroundColor: Colors.white,
            toolbarHeight: _showTitle ? 35 : 0,
            floating: true,
            snap: true,
            pinned: true,
            elevation: 0,
            title: AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: _showTitle ? 1.0 : 0.0,
              child: const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text("facebook"),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(48.0),
              child: Container(
                color: Colors.white,
                child: TabBar(
                  controller: _tabController,
                  indicatorColor: MyColors.primaryColor,
                  labelColor: MyColors.primaryColor,
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Tab(icon: Icon(Icons.home)),
                    Tab(icon: Icon(Icons.video_library)),
                    Tab(icon: Icon(Icons.group)),
                    Tab(icon: Icon(Icons.store)),
                    Tab(icon: Icon(Icons.notifications)),
                    Tab(icon: Icon(Icons.person)),
                  ],
                ),
              ),
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: const [
            HomeScreen(),
            ReelsScreen(),
            FriendRequetsScreen(),
            MarketPlaceScreen(),
            NotificationsScreens(),
            ProfileScreen(),
          ],
        ),
      ),
    );
  }
}
