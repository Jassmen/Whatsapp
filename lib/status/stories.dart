import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
import 'package:flutter/material.dart';


class StoryPage extends StatelessWidget {
 // final String image,name,time;

  const StoryPage({Key key, }) ;
  @override
  Widget build(BuildContext context) {
   // final controller = StoryController();

    final List<StoryItem> storyItem=[
     StoryItem.text('Hi', Colors.black),
     StoryItem.pageImage(AssetImage('assets/str2.png')) ,
    ];
    return StoryView(

    storyItem,
    inline: false,
    repeat: false,
    );
  }
}
