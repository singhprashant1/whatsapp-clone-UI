import 'package:flutter/material.dart';
import 'package:story_view/story_controller.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.text("hi", Colors.red),
      StoryItem.pageImage(NetworkImage(
          "https://homepages.cae.wisc.edu/~ece533/images/serrano.png")),
      StoryItem.pageGif(
          "https://clipartart.com/images/animated-gif-clipart-1.gif")
    ];
    return StoryView(
      storyItems,
      controller: controller,
      inline: false,
      repeat: true,
    );
  }
}
