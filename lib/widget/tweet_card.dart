import 'package:chimchimmobileapp/model/user_model.dart';
import 'package:flutter/material.dart';

class TweetCard extends StatelessWidget {
  final User user; // Assuming you have a User model with required fields

  const TweetCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Replace placeholder data with actual data from the user object
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://via.placeholder.com/150', // Replace with your actual URL
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Martha Craig', // Replace with actual data
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '@craig_love · 12h', // Replace with actual data
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.more_vert),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. What do you bring? #TellMeAboutYou', // Replace with actual data
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconTextWidget(icon: Icons.mode_comment_outlined, text: '28'),
                IconTextWidget(icon: Icons.autorenew, text: '5'),
                IconTextWidget(icon: Icons.favorite_border, text: '21'),
                Icon(Icons.share_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconTextWidget({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(icon, size: 14.0, color: Colors.grey),
        SizedBox(width: 4.0),
        Text(text, style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}