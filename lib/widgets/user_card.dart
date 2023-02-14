import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String userName;
  final String userUrl;
  UserCard({required this.userName, required this.userUrl});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blueGrey.shade300,
            backgroundImage: NetworkImage(userUrl),
          ),
          Card(
              child: Text(
            userName,
            style: TextStyle(fontSize: 20),
          ))
        ],
      ),
    );
  }
}
