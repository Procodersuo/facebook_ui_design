import 'package:facebook_ui_design/widgets/button.dart';
import 'package:facebook_ui_design/widgets/like_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../colors/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> myCards = [
      "Save", "Memories", "Groups", "Videos", "MarketPlace",
      "Friends", "Feeds", "Events"
    ];
    List<IconData> myCardsIcon=[FontAwesomeIcons.floppyDisk,FontAwesomeIcons.house,
      FontAwesomeIcons.memory,FontAwesomeIcons.groupArrowsRotate,FontAwesomeIcons.video,FontAwesomeIcons.peopleGroup,
      FontAwesomeIcons.rss,FontAwesomeIcons.calendar,];
    List<String> myShortCuts=["Talha", "ASAD","SHAZAD","Naseem","Shafqat","Hamza","Ahmad","Karan AJULA"];
    List<String> myListTile=["Help and Support","Setting and Privacy","Professional access","Also from meta"];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,  // Enable floating behavior
            snap: true,      // Allow snapping
            pinned: false,   // Not pinned, will disappear
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(color: Colors.white),
              ),
            ),
            title: Text(
              "Menu",
              style: TextStyle(
                color: MyColors.blackColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              Row(
                children: [
                  LikeIcon(icon: FontAwesomeIcons.replyAll),
                  const SizedBox(width: 10),
                  LikeIcon(icon: FontAwesomeIcons.magnifyingGlass),
                ],
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                    child: Card(
                      color: Colors.white,
                      elevation: 5,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                color: Colors.pink,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Talha Shoaib",
                              style: TextStyle(
                                color: MyColors.blackColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                color: Colors.pink,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                color: Colors.pink,
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                child: Icon(Icons.keyboard_arrow_down),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Your Shortcuts",
                      style: TextStyle(
                        color: MyColors.blackColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 130,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                  itemCount: MyColors.storiesColors.length,
                  itemBuilder: (context,index)
              {
              return Padding(
                padding:  const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 90, width: 80,
                      decoration: BoxDecoration(
                        color: MyColors.storiesColors[index],
                        shape: BoxShape.circle
                      ),
                      
                    ),
                    Text(myShortCuts[index])
                  ],
                ),
              );
              }),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(), // Disables grid scroll
                shrinkWrap: true, // Allows GridView to wrap its height
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  childAspectRatio: 2.5,
                ),
                itemCount: myCards.length, // Adjust this as needed
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    elevation: 5,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          bottom: 4,
                          child: Text(
                            myCards[index],
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          bottom: 35,
                          child: Icon(myCardsIcon[index],color: MyColors.storiesColors[index],)
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
         SliverToBoxAdapter(
           child: ProfileScreenButton(
             text: "See More",
           ),
         ),
          SliverList(delegate: SliverChildBuilderDelegate(
                  (BuildContext context,int index)
              {
                return ListTile(
                    leading: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          color: MyColors.storiesColors[index],
                          shape: BoxShape.circle
                      ),
                    ),
                    title: Text(myListTile[index]),
                    trailing:const Icon(Icons.keyboard_arrow_down)

                );
              },
              childCount: 4
          )),
         SliverToBoxAdapter(
           child: ProfileScreenButton(
             text: "Log out",
           ),
         ),




        ],
      ),
    );
  }
}
