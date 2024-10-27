import 'package:facebook_ui_design/widgets/like_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationsScreens extends StatelessWidget {
  const NotificationsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          snap: true,
          pinned: true,
          title: const Text("Notifications"),
          actions: [
            LikeIcon(icon: FontAwesomeIcons.magnifyingGlass),
          ],
        ),
        // Use SliverList instead of ListView
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return const ListTile(
                title: Text("HELLO"),
              );
            },
            childCount: 20, // Number of items
          ),
        ),
      ],
    );
  }
}
