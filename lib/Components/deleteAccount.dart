import 'package:flutter/material.dart';

class DeleteAccount extends StatelessWidget {
  final Widget destination;
  final String displayText;
  final IconData icon;

  DeleteAccount(
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
            color: Colors.red,
            size: 18,
          ),
          title: Text(
            displayText,
            style: TextStyle(color: Colors.red, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
