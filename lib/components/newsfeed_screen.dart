import 'package:flutter/material.dart';
import 'package:widgets/components/newsfeedcomponent.dart';
import 'package:widgets/components/globalappbar_component.dart';

class NewsfeedScreen extends StatefulWidget {
  const NewsfeedScreen({super.key});

  @override
  State<NewsfeedScreen> createState() => _NewsfeedScreenState();
}

class _NewsfeedScreenState extends State<NewsfeedScreen> {

  final List<Map<String, String>> newsfeed = [
    {
      "username": "John Doe",
      "timeposted": "3 hours ago",
      "status": "Having a great day!",
      "likes": "120",
      "comments": "25",
      "shares": "10",
    },
    {
      "username": "Jane Smith",
      "timeposted": "5 hours ago",
      "status": "Learning Flutter is fun!",
      "likes": "250",
      "comments": "40",
      "shares": "15",
    },
    {
      "username": "Michael Cruz",
      "timeposted": "1 hour ago",
      "status": "Working on my new project.",
      "likes": "89",
      "comments": "12",
      "shares": "4",
    },
    {
      "username": "Sarah Jenkins",
      "timeposted": "3 hours ago",
      "status": "Just finished running a 5k marathon! ",
      "likes": "412",
      "comments": "56",
      "shares": "22",
    },
    {
      "username": "David Kim",
      "timeposted": "Yesterday",
      "status": "Does anyone have good recommendations for a mechanical keyboard?",
      "likes": "45",
      "comments": "78",
      "shares": "2",
    },
    {
      "username": "Elena Rostova",
      "timeposted": "2 days ago",
      "status": "Weekend getaway in the mountains. The view is absolutely breathtaking!",
      "likes": "530",
      "comments": "92",
      "shares": "41",
    },
    {
      "username": "Marcus Aurelius",
      "timeposted": "Just now",
      "status": "You have power over your mind - not outside events. Realize this, and you will find strength.",
      "likes": "1024",
      "comments": "340",
      "shares": "890",
    },
    {
      "username": "Chloe Ting",
      "timeposted": "4 hours ago",
      "status": "New healthy breakfast recipe video drops tomorrow morning! Stay tuned! ",
      "likes": "815",
      "comments": "112",
      "shares": "65",
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalappbarComponent(),

      body: ListView.builder(
        padding: const EdgeInsets.all(10),

        itemCount: newsfeed.length,

        itemBuilder: (context, index) {
          final post = newsfeed[index];

          return Newsfeedcomponent(
            username: post["username"],
            timeposted: post["timeposted"],
            status: post["status"],
            numberoflikes: post["likes"],
            numberofcomments: post["comments"],
            numberofshares: post["shares"],
          );
        },
      ),
    );
  }
}