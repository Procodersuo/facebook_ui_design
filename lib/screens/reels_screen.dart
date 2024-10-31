import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    List<String> myList = ["Talha Shoaib", "Asad Ali", "Shahzad Hyder", "Naseem"];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Videos',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26.0,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
            },
          ),
        ],
        toolbarHeight: 50,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Reels Heading with Icon
                  const Row(
                    children: [
                      Icon(Icons.video_library, size: 24, color: Colors.black),
                      SizedBox(width: 8),
                      Text(
                        'Reels',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  SizedBox(
                    height: 400,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: null,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: width / 2,
                            decoration: BoxDecoration(
                              color: Colors.primaries[index % Colors.primaries.length],
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  right: 8,
                                  top: 8,
                                  child: IconButton(
                                    icon: const Icon(Icons.more_horiz, color: Colors.white),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Videos Section
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
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
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              "${myList[index % myList.length]} uploaded a new video",
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          const Spacer(),

                                          const Icon(Icons.more_horiz),
                                          const SizedBox(width: 10),
                                          const Icon(Icons.cancel),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text(
                                            "1d",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Icon(Icons.public, color: Colors.grey, size: 12),
                                        ],
                                      ),
                                      const ReadMoreText(
                                        trimLines: 1,
                                        trimMode: TrimMode.Line,
                                        "Watch this amazing new video! 🎬",
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Container(
                        height: 400, // Height for each video post
                        decoration: BoxDecoration(
                          color: Colors.primaries[(index + 1) % Colors.primaries.length],
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Stack(
                          children: [

                            Positioned(
                              right: 8,
                              bottom: 8,
                              child: IconButton(
                                icon: const Icon(Icons.volume_up, color: Colors.white),
                                onPressed: () {

                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: width - 201,
                            child: const SizedBox(
                              height: 50,
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    left: 0,
                                    child: Icon(
                                      FontAwesomeIcons.thumbsUp,
                                      color: Colors.blue,
                                      size: 20,
                                    ),
                                  ),
                                  Positioned(
                                    left: 18,
                                    child: Icon(
                                      FontAwesomeIcons.heart,
                                      color: Colors.red,
                                      size: 20,
                                    ),
                                  ),
                                  Positioned(
                                    left: 40,
                                    child: Icon(
                                      FontAwesomeIcons.faceSmile,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                  ),
                                  Positioned(
                                    left: 80,
                                    top: 10,
                                    child: Text("2M"),
                                  ),
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
                          IconButton(
                            icon: const Icon(Icons.thumb_up_alt_outlined, color: Colors.blue),
                            onPressed: () {
                            },
                          ),
                          IconButton(
                            icon: const Icon(FontAwesomeIcons.comment, color: Colors.grey),
                            onPressed: () {
                            },
                          ),
                          IconButton(
                            icon: const Icon(FontAwesomeIcons.whatsapp, color: Colors.green),
                            onPressed: () {
                            },
                          ),
                          IconButton(
                            icon: const Icon(FontAwesomeIcons.share, color: Colors.black),
                            onPressed: () {
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              childCount: null,
            ),
          ),
        ],
      ),
    );
  }
}
