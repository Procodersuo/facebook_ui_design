import 'package:facebook_ui_design/widgets/like_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<String> myList=["Talha Shoaib","Asad Ali","Shahzad Hyder","Naseem"];
    List<Color> storiesColors=[Colors.blue,Colors.yellow,Colors.pink, Colors.teal,Colors.tealAccent,Colors.red
      ,Colors.orange,Colors.indigo];
    return  CustomScrollView(
      slivers: [
       SliverToBoxAdapter(
         child: SizedBox(
           height: height/4,
           child: ListView.builder(
             scrollDirection: Axis.horizontal,
               itemCount: storiesColors.length,
               itemBuilder: (context,index)
           {
             return Padding(
               padding: const EdgeInsets.all(8),
               child: Container(
                 height: height/4-25,
                 width: 100,
                 decoration: BoxDecoration(
                   color: storiesColors[index],
                   borderRadius: BorderRadius.circular(14),
                 ),
                 child: Stack(
                   children: [
                     Positioned(
                       right:2,
                       bottom: 2,
                       child: LikeIcon(
                         icon: Icons.menu,
                       ),
                     )
                   ],
                 ),
               ),
             );
           }),
         ),
       ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                child: Container(
                                  height:50,
                                  decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                               Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            "${myList[index].toString()} updated his profile picture",style: const TextStyle(
                                              color: Colors.black,fontSize: 17,fontWeight: FontWeight.w400
                                          ),),
                                        ),
                                        const Spacer(),
                                        const Icon(Icons.menu),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Icon(Icons.cancel)
                                      ],
                                    ),

                                    const Row(
                                      children: [
                                        Text("1d",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400),),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(Icons.wordpress,color: Colors.grey, size: 12,)
                                      ],
                                    ),
                                    const ReadMoreText(
                                        trimLines: 1,
                                        trimMode: TrimMode.Line,
                                        "Developing FaceBook UI in  collaboration with Asad ALI \n for practicing fb ui")
                                  ],
                                ),
                              )

                            ],
                          ),

                        ],
                      ),
                    ),
                    Container(
                      height: 350,
                      decoration:  BoxDecoration(
                        color: storiesColors[index],
                      ),
                    ),

                    Row(
                      children: [
                        SizedBox(
                          width: width - 201, // Constrain the width of the icons
                          child: SizedBox(
                            height: 50, // Define a height for the Stack
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  left: 0, // Positioning the first icon
                                  child: LikeIcon(icon: FontAwesomeIcons.thumbsUp, text: "",iconColor: Colors.blue,),
                                ),
                                Positioned(
                                  left: 18, // Slightly overlap the second icon
                                  child: LikeIcon(icon: FontAwesomeIcons.heart, text: "", iconColor: Colors.red,),
                                ),
                                Positioned(
                                  left: 40, // Slightly overlap the third icon
                                  child: LikeIcon(icon: FontAwesomeIcons.faceSmile, text: "",iconColor: Colors.yellow,),
                                ),
                                const SizedBox(width: 20),
                                const Positioned(
                                  left:80,
                                  top:10,
                                  child: Text("2M"),)

                              ],
                            ),
                          ),
                        ),

                        const Spacer(),
                        const Text("100 Comments"),
                        const SizedBox(width: 10),
                      ],
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LikeIcon(icon: Icons.thumb_up_alt_outlined, text: "Like",),
                        LikeIcon(icon: FontAwesomeIcons.comment, text: "Comment ",),
                        LikeIcon(icon: FontAwesomeIcons.whatsapp, text: "Send",),
                        LikeIcon(icon: FontAwesomeIcons.share, text: "Share",),
                      ],
                    )
                  ],
                ),
              );
            },
            childCount: 3, // Number of items
          ),
        ),
SliverToBoxAdapter(
  child: Row(
    children: [
      LikeIcon(icon: FontAwesomeIcons.video,),
      const SizedBox(width: 5,),
      const Text("Reels"),
      const Spacer(),
      LikeIcon(icon: FontAwesomeIcons.diceThree,)
    ],
  ),
),
        SliverToBoxAdapter(
          child: SizedBox(
            height: height/2,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: storiesColors.length,
                itemBuilder: (context,index)
                {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      height: height/4-25,
                      width: 200,
                      decoration: BoxDecoration(
                        color: storiesColors[index],
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child:  Stack(
                        children: [
Positioned(
  right:2,
  bottom: 2,
  child: LikeIcon(
    icon: Icons.menu,
  ),
)
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                child: Container(
                                  height:50,
                                  decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            "${myList[index].toString()} updated his profile picture",style: const TextStyle(
                                              color: Colors.black,fontSize: 17,fontWeight: FontWeight.w400
                                          ),),
                                        ),
                                        const Spacer(),
                                        const Icon(Icons.menu),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Icon(Icons.cancel)
                                      ],
                                    ),

                                    const Row(
                                      children: [
                                        Text("1d",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400),),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(Icons.wordpress,color: Colors.grey, size: 12,)
                                      ],
                                    ),
                                    const ReadMoreText(
                                        trimLines: 1,
                                        trimMode: TrimMode.Line,
                                        "Developing FaceBook UI in  collaboration with Asad ALI \n for practicing fb ui")
                                  ],
                                ),
                              )

                            ],
                          ),

                        ],
                      ),
                    ),
                    Container(
                      height: 350,
                      decoration:  BoxDecoration(
                        color: storiesColors[index],
                      ),
                    ),

                    Row(
                      children: [
                        SizedBox(
                          width: width - 201, // Constrain the width of the icons
                          child: SizedBox(
                            height: 50, // Define a height for the Stack
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  left: 0, // Positioning the first icon
                                  child: LikeIcon(icon: FontAwesomeIcons.thumbsUp, text: "",iconColor: Colors.blue,),
                                ),
                                Positioned(
                                  left: 18, // Slightly overlap the second icon
                                  child: LikeIcon(icon: FontAwesomeIcons.heart, text: "", iconColor: Colors.red,),
                                ),
                                Positioned(
                                  left: 40, // Slightly overlap the third icon
                                  child: LikeIcon(icon: FontAwesomeIcons.faceSmile, text: "",iconColor: Colors.yellow,),
                                ),
                                const SizedBox(width: 20),
                                const Positioned(
                                  left:80,
                                  top:10,
                                  child: Text("2M"),)

                              ],
                            ),
                          ),
                        ),

                        const Spacer(),
                        const Text("100 Comments"),
                        const SizedBox(width: 10),
                      ],
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LikeIcon(icon: Icons.thumb_up_alt_outlined, text: "Like",),
                        LikeIcon(icon: FontAwesomeIcons.comment, text: "Comment ",),
                        LikeIcon(icon: FontAwesomeIcons.whatsapp, text: "Send",),
                        LikeIcon(icon: FontAwesomeIcons.share, text: "Share",),
                      ],
                    )
                  ],
                ),
              );
            },
            childCount: 3, // Number of items
          ),
        ),
      ],
    );
  }
}
