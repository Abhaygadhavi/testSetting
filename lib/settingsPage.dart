import 'package:flutter/material.dart';

import 'AdditionalSettingsPage.dart';
import 'Components/myProfile.dart';
import 'Components/socialMediaRow.dart';
import 'Components/buildAccountOption.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff140328),
          title: Text(
            "Settings",
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              MyProfile(),
              Column(
                children: [
                  Container(
                    color: Color.fromRGBO(22, 23, 44, 1.0),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Your Account",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 5,
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                  BuildAccountOption(
                    destination: AdditionalSettingsPage(),
                    displayText: 'Credits',
                    icon: Icons.arrow_circle_right_sharp,
                  ),
                  Divider(
                    height: 5,
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                  BuildAccountOption(
                    destination: AdditionalSettingsPage(),
                    displayText: 'Purchases',
                    icon: Icons.arrow_circle_down_sharp,
                  ),
                  Divider(
                    height: 5,
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                  BuildAccountOption(
                    destination: AdditionalSettingsPage(),
                    displayText: 'Notifications',
                    icon: Icons.notifications,
                  ),
                  Divider(
                    height: 5,
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                  BuildAccountOption(
                    destination: AdditionalSettingsPage(),
                    displayText: 'Refer & Earn',
                    icon: Icons.card_giftcard,
                  ),
                  Divider(
                    height: 5,
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                  BuildAccountOption(
                    destination: AdditionalSettingsPage(),
                    displayText: 'Additional Settings',
                    icon: Icons.settings,
                  ),
                  Divider(
                    height: 5,
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              SocialMediaRow(),
            ],
          ),
        )));
  }
}
