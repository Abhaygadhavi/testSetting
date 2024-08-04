import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(FontAwesomeIcons.whatsapp),
              onPressed: () {
                // Add action for the icon button
                print('whatsapp icon pressed');
              },
              iconSize: 30.0,
              color: Colors.white,
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.instagram),
              onPressed: () {
                // Add action for the icon button
                print('Instagram icon pressed');
              },
              iconSize: 30.0,
              color: Colors.white,
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.facebook),
              onPressed: () {
                // Add action for the icon button
                print('facebook icon pressed');
              },
              iconSize: 30.0,
              color: Colors.white,
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.youtube),
              onPressed: () {
                // Add action for the icon button
                print('youtube icon pressed');
              },
              iconSize: 30.0,
              color: Colors.white,
            ),
          ],
        ),
        SizedBox(
          width: 30,
        ),
        Text(
          "Version 1.0.1",
          style: TextStyle(color: Colors.grey, fontSize: 18),
        )
      ],
    );
  }
}
