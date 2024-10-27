import 'package:facebook_ui_design/widgets/like_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../colors/colors.dart';

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
const SliverToBoxAdapter(
  child: Padding(
    padding: EdgeInsets.all(8.0),
    child: Text("Today",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
  ),
),
        SliverList(delegate: SliverChildBuilderDelegate(
                (BuildContext context,int index)
            {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: MyColors.storiesColors[index],
                          shape: BoxShape.circle
                      ),
                    ),
                    title: const Text("Ali send you friend Request"),
                    subtitle: Text("111483948d"),
                    trailing:const Icon(Icons.more_horiz)

                ),
              );
            },
            childCount: 4
        )),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Earlier",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
          ),
        ),
        SliverList(delegate: SliverChildBuilderDelegate(
                (BuildContext context,int index)
            {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListTile(
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: MyColors.storiesColors[index],
                              shape: BoxShape.circle
                          ),
                        ),
                        title: const Text("Ahmad invites you to join his Channel"),
                        subtitle: const Text("300000d"),
                        trailing:const Icon(Icons.more_horiz)

                    ),
                  ],
                ),
              );
            },
            childCount: 4
        )),
      ],
    );
  }
}
