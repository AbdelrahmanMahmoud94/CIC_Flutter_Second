import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class Storey extends StatelessWidget {
  final StoryController controller = StoryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delicious Ghanaian Meals"),
      ),
      body: Container(
        child: StoryView(
          controller: controller,
          storyItems: [
            StoryItem.text(
              title:
                  "Hello world!\nHave a look at some great Ghanaian delicacies. I'm sorry if your mouth waters. \n\nTap!",
              backgroundColor: Colors.orange,
              roundedTop: true,
            ),

            StoryItem.text(
              title:
              "Hello world!\nHave a look at some great Ghanaian delicacies. I'm sorry if your mouth waters. \n\nTap!",
              backgroundColor: Colors.orange,
              roundedTop: true,
            ),
            StoryItem.pageImage(
              controller: controller,
              caption: "Mickey Mouse",
              url: 'https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif'
            )
          ],
          onStoryShow: (s) {
            print("Showing a story");
          },
          onComplete: () {
            print("Completed a cycle");
          },
          progressPosition: ProgressPosition.top,
          repeat: false,
          inline: true,
        ),
      ),
    );
  }
}
