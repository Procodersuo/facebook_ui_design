import 'package:flutter/material.dart';

class FriendRequetsScreen extends StatelessWidget {
  const FriendRequetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            floating: true,
            snap: false,
            backgroundColor: Colors.white,
            title: const Text(
              'Friends',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.black,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search, color: Colors.black),
                onPressed: () {
                },
              ),
            ],
            toolbarHeight: 40,
          ),
          SliverToBoxAdapter(
            child: _buildScrollableTabs(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return _buildFriendRequestItem(
                  'Talha Chacho',
                  'mutual friends',
                  'https://images.pexels.com/photos/29062948/pexels-photo-29062948/'
                      'free-photo-of-stylish-woman-in-green-jacket-and-grey-hood.jpeg?'
                      'auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                );
              },
              childCount: null,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildScrollableTabs() {
    return Container(
      height: 50,
      padding: EdgeInsets.zero,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildTabItem('786 Online', true, () {}),
          _buildTabItem('Suggestions', false, () {}),
          _buildTabItem('Your Friends', false, () {}),
        ],
      ),
    );
  }

  Widget _buildTabItem(String title, bool hasDot, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey.shade400,
          minimumSize: const Size(100, 40),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (hasDot)
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 5,
                ),
              ),
            Text(
              title,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFriendRequestItem(String name, String mutualFriends, String imageUrl) {
    return ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(mutualFriends),
            const Text('1 weeks ago', style: TextStyle(color: Colors.grey)),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade800,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
              ),
              child: const Text('Add Friend'),
            ),
            const SizedBox(width: 8),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.grey.shade400,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
              ),
              child: const Text('Remove'),
            ),
          ],
        ),

    );
  }
}
