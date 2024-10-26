import 'package:facebook_ui_design/widgets/like_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../colors/colors.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: CustomScrollView(

        slivers: [
          SliverAppBar(
            // for app bar to go on scroll up and show instatntly when scroll do
            floating: true,
            title: Text("Menu",style: TextStyle(color: MyColors.blackColor,fontSize: 20,fontWeight: FontWeight.bold),),
            actions: [
              Row(
                children: [
                  LikeIcon(icon:FontAwesomeIcons.replyAll,),
                  const SizedBox(
                    width: 10,
                  ),
                  LikeIcon(icon:FontAwesomeIcons.magnifyingGlass,),
                ],
              )

            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Profile Container
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
                                  shape: BoxShape.circle
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Talha Shoaib",style: TextStyle(color: MyColors.blackColor,fontSize: 20,fontWeight: FontWeight.bold),),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                  color: Colors.pink,
                                  shape: BoxShape.circle
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
                                  shape: BoxShape.circle
                              ),

                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                  // Text for your shortcuts
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("Your ShortCuts",style: TextStyle(color: MyColors.blackColor,fontSize: 15,fontWeight: FontWeight.w500),),
                  ),


                ],
              ),
            ),
          ),



        ],
      ),
    );
  }
}
