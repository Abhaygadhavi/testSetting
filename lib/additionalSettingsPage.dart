import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:starastro/Components/deleteAccount.dart';
import 'package:starastro/Components/logOutButton.dart';

import 'Components/SocialMediaRow.dart';
import 'Components/buildAccountOption.dart';

class AdditionalSettingsPage extends StatelessWidget {
  const AdditionalSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff140328),
        title: Text(
          "Additional Settings",
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(
                height: 5,
                thickness: 0.5,
                color: Colors.grey,
              ),
              BuildAccountOption(
                destination: AdditionalSettingsPage(),
                displayText: 'Languages',
                icon: FontAwesomeIcons.language,
              ),
              Divider(
                height: 5,
                thickness: 0.5,
                color: Colors.grey,
              ),
              BuildAccountOption(
                destination: AdditionalSettingsPage(),
                displayText: 'Change Password',
                icon: FontAwesomeIcons.lock,
              ),
              Divider(
                height: 5,
                thickness: 0.5,
                color: Colors.grey,
              ),
              BuildAccountOption(
                destination: AdditionalSettingsPage(),
                displayText: 'App Appearance',
                icon: FontAwesomeIcons.sun,
              ),
              Divider(
                height: 5,
                thickness: 0.5,
                color: Colors.grey,
              ),
              BuildAccountOption(
                destination: AdditionalSettingsPage(),
                displayText: 'Support',
                icon: FontAwesomeIcons.headphones,
              ),
              Divider(
                height: 5,
                thickness: 0.5,
                color: Colors.grey,
              ),
              DeleteAccount(
                destination: AdditionalSettingsPage(),
                displayText: 'Delete Account',
                icon: FontAwesomeIcons.trash,
              ),
              Container(
                color: Color.fromRGBO(22, 23, 44, 1.0),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "About",
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
                displayText: 'Terms & Services',
                icon: FontAwesomeIcons.lock,
              ),
              Divider(
                height: 5,
                thickness: 0.5,
                color: Colors.grey,
              ),
              BuildAccountOption(
                destination: AdditionalSettingsPage(),
                displayText: 'Privacy Policy',
                icon: FontAwesomeIcons.sun,
              ),
              LogOutButton(),
              SizedBox(
                height: 50,
              ),
              SocialMediaRow(),
            ],
          ),
        ),
      ),
    );
  }
}
