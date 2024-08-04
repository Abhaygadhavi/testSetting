import 'package:flutter/material.dart';

class BuildAccountOption extends StatelessWidget {
  final Widget destination;
  final String displayText;
  final IconData icon;

  BuildAccountOption(
      {required this.destination,
      required this.displayText,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Padding(
        padding: EdgeInsets.all(1),
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.white,
            size: 18,
          ),
          title: Text(
            displayText,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 18,
          ),
        ),
      ),
    );
  }
}
